/*
  ******************************************************************************
  * @file    main.c
  * @author  Tracediary
  * @version V1.0
  * @date    2021/03/25
  ******************************************************************************
  *                 --------------------
  *  VDD-----------|1(VDD)      24 (GND)|-----------GND
  *  NC------------|2(PA06)     23(PA02)|------------NC
  *  NC------------|3(PA07)     22(PA04)|------------NC
  *  NC------------|4(PB02)     21(PA03)|------------NC
  *  NC------------|5(PB03)     20(PA01)|------------NC
  *  NC------------|6(PA08)     19(PA00)|------------NC
  *  NC------------|7(PA09)     18(PA15)|------------NC
  *  NC------------|8(PA10)     17(PA14)|------------NC
  *  NC------------|9(PA11)     16(PB05)|------------NC
  *  UART0_RX------|10(PA05)    15(PB04)|------------NC
  *  UART0_TX------|11(PA12)    14(PB01)|------------NC
  *  LED-----------|12(PA13)    13(PB00)|------------NC
  *                ---------------------
  *                  APT32F102 SOP24
  */

#include "apt32f102.h"
#include "apt32f102_adc.h"
#include "apt32f102_bt.h"
#include "apt32f102_coret.h"
#include "apt32f102_countera.h"
#include "apt32f102_crc.h"
#include "apt32f102_ept.h"
#include "apt32f102_et.h"
#include "apt32f102_gpio.h"
#include "apt32f102_gpt.h"
#include "apt32f102_i2c.h"
#include "apt32f102_ifc.h"
#include "apt32f102_lpt.h"
#include "apt32f102_rtc.h"
#include "apt32f102_sio.h"
#include "apt32f102_spi.h"
#include "apt32f102_syscon.h"
#include "apt32f102_uart.h"
#include "apt32f102_wwdt.h"
#include "apt32f102_types_local.h"

#include "stdbool.h"
#include "usart.h"


#include "atom.h"
#include "atomport.h"
#include "atomqueue.h"
#include "atomtimer.h"
#include "atomsem.h"


/* defines -------------------------------------------------------------------*/
#define MAIN_STACK_SIZE_BYTES       512
#define IDLE_STACK_SIZE_BYTES       201


typedef struct _QUEUE_DATA_T{
	uint8_t queStatus;
	uint32_t quedata;
}QueData_t;


/* Application threads' TCBs */
static ATOM_TCB main_tcb;
static ATOM_TCB sec_tcb;

/* Main thread's stack area */
static uint8_t main_thread_stack[MAIN_STACK_SIZE_BYTES];
static uint8_t scd_thread_stack[MAIN_STACK_SIZE_BYTES];

/* Idle thread's stack area */
static uint8_t idle_thread_stack[IDLE_STACK_SIZE_BYTES];




/* Forward declarations */
#define CALLBACK_TICKS			5
#define QUEUE_ENTRIES			7

static ATOM_QUEUE queueTest;
static ATOM_SEM semTest;
static ATOM_TIMER timer_cb;

static QueData_t queueData[QUEUE_ENTRIES];




/* externs Register-------------------------------------------------------------------*/

/* externs function-------------------------------------------------------------------*/
//extern void delay_nms(unsigned int t);
extern void APT32F102_init(void);	
extern void delay_nms(unsigned int t);



static void timerTestCallback (POINTER cb_data)
{
	ATOM_TIMER *timerPointer = (ATOM_TIMER *)cb_data;
	//if (atomTimerDelay(1) == ATOM_ERR_CONTEXT)
	{
		atomSemPut(&semTest);
		timerPointer->cb_ticks = SYSTEM_TICKS_PER_SEC;
		//timerPointer->cb_func = timerTestCallback;
		//timerPointer->cb_data = timerPointer;
		atomTimerRegister (timerPointer);
	}
	
}





static void test_second_func (uint32_t data)
{
	int sec = 0;
	
	uint8_t status;

	QueData_t msg;
	
	Debug("enter sec func\n");

    while (1)
    {
		status = atomQueueGet (&queueTest, 0, (uint8_t *)&msg);
		if (status != ATOM_OK)
		{
			Debug("queue faile %d\n",status);
			atomTimerDelay (1000);
			continue;
		}
		sec++;
        Debug("task 2 the %d time run, get queue, the quedata is %d, the status is %d\n",sec, msg.quedata, msg.queStatus);

		SYSCON_IWDCNT_Reload();
    }
}



static void main_thread_func (uint32_t data)
{
	int first = 1;
	uint8_t status;
	
	QueData_t que = {2,58};

	timer_cb.cb_ticks = SYSTEM_TICKS_PER_SEC;
	timer_cb.cb_func = timerTestCallback;
	timer_cb.cb_data = &timer_cb;
	
	Debug("enter main func\n");
	
	if (atomTimerRegister (&timer_cb) != ATOM_OK)
	{
		Debug("test timer failed!\n");
		//TODO:failed
	}
	if(atomSemCreate (&semTest, 0) != ATOM_OK)
	{
		Debug("sem faild\n");
	}
	
	
	
	Debug("init ok\n");
	
	GPIO_Init(GPIOA0, 13, Output);
	GPIO_Write_High(GPIOA0, 13);

	while(1)
	{
		status = atomSemGet(&semTest, 0);
		if( status != ATOM_OK)
		{
			Debug("atom sem failed %d\n",status);
			continue;
		}
		
		
		Debug("task 1 the %d time run, go to send queue\n",first++);
		atomQueuePut (&queueTest, 0, (uint8_t *)&que);
		
		que.quedata++;
		que.queStatus++;

		GPIO_Reverse(GPIOA0, 13);
		SYSCON_IWDCNT_Reload();
	}
}

/*************************************************************/
//main
void SYSCON_OS_CONFIG(void)
{
//------SYSTEM CLK AND PCLK FUNTION---------------------------/
	SYSCON_RST_VALUE();                                                         //SYSCON all register clr
	SYSCON_General_CMD(ENABLE,ENDIS_ISOSC);
	//EMOSC_OSTR_Config(0XAD,0X1f,EM_LFSEL_EN,EM_FLEN_EN,EM_FLSEL_10ns);			//EM_CNT=0X3FF,0xAD(36K),EM_GM=0,Low F modedisable,EM filter disable,if enable,cont set 5ns
	//SYSCON_General_CMD(ENABLE,ENDIS_EMOSC);
	SYSCON_HFOSC_SELECTE(HFOSC_SELECTE_48M);									//HFOSC selected 48MHz
	SystemCLK_HCLKDIV_PCLKDIV_Config(SYSCLK_HFOSC,HCLK_DIV_1,PCLK_DIV_1,HFOSC_48M);//system clock set, Hclk div ,Pclk div  set system clock=SystemCLK/Hclk div/Pclk div
//------------  WDT FUNTION  --------------------------------/

	SYSCON_IWDCNT_Config(IWDT_TIME_2S,IWDT_INTW_DIV_7);      					//WDT TIME 1s,WDT alarm interrupt time=1s-1s*1/8=0.875S
    SYSCON_WDT_CMD(ENABLE);                                                  	//enable WDT		
    SYSCON_IWDCNT_Reload();                                                   	//reload WDT
	//IWDT_Int_Enable();

//------------  WWDT FUNTION  --------------------------------/
	WWDT_CNT_Load(0xFF);
	WWDT_CONFIG(PCLK_4096_DIV0,0xFF,WWDT_DBGDIS);
	WWDT_Int_Config(ENABLE);
	//WWDT_CMD(ENABLE);

}


void APT32F102_OS_init(void) 
{
    SYSCON->PCER0=0xFFFFFFF;                                        //PCLK Enable  0x00410071
    SYSCON->PCER1=0xFFFFFFF;                                        //PCLK Enable
    while(!(SYSCON->PCSR0&0x1));                                    //Wait PCLK enabled	

    SYSCON_OS_CONFIG();                                                 //syscon  initial
	//CK_CPU_EnAllNormalIrq();                                         //enable all IRQ
}





/*************************************************************/
int main(void) 
{
	uint8_t status = 0;
	
	APT32F102_OS_init();
	usartInit();
	
	
	
	status = atomOSInit(&idle_thread_stack[0], IDLE_STACK_SIZE_BYTES, FALSE);
    if (status == ATOM_OK)
    {
        /* Enable the system tick timer */
        archInitSystemTickTimer();
		
		if(atomQueueCreate (&queueTest, (uint8_t *)&queueData[0], sizeof(QueData_t), QUEUE_ENTRIES)!= ATOM_OK)
		{
			Debug("queue fail\n");
		}
#if 1
        /* Create an application thread */
        status = atomThreadCreate(&main_tcb,
                     11, main_thread_func, 0,
                     &main_thread_stack[0],
                     MAIN_STACK_SIZE_BYTES,
                     TRUE);
#endif
#if 1
		atomThreadCreate(&sec_tcb,
				 12, test_second_func, 0,
				 &scd_thread_stack[0],
				 MAIN_STACK_SIZE_BYTES,
				 TRUE);
#endif
        if (status == ATOM_OK)
        {
            /**
             * First application thread successfully created. It is
             * now possible to start the OS. Execution will not return
             * from atomOSStart(), which will restore the context of
             * our application thread and start executing it.
             *
             * Note that interrupts are still disabled at this point.
             * They will be enabled as we restore and execute our first
             * thread in archFirstThreadRestore().
             */
            atomOSStart();
        }
    }

	
	while(1);
	
}



































