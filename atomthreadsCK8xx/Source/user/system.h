#ifndef _system_h
#define _system_h


#include "apt32f102.h"
#include "apt32f102_adc.h"
#include "stdio.h"


//#define DEBUG_APT



#ifdef DEBUG_APT
#define Debug(...)				printf(__VA_ARGS__)
#else
#define Debug(...)				
#endif






//电池保护板反馈参考电压，参考电压为VDD=5V,4096*4.5/5,4096/5
#define DANGER_CHARGE			3686		//4.5V
#define START_CHARGE			2867		//3.5V


#define CELL_4_80_SIGNAL		1843		//2.25V

#define SLOW_CHARGE				1638		//2.0V
#define CELL_5_FLAG				1229		//1.5V
//#define CELL_FULL				1065		//1.3
#define CELL_FULL				1147		//1.4

//电池实际电压，参考电压为VDD=5V,25.5/4096,表示最高电压25.5V
//4419584/27535
#define CELL_5_FULL				3434		//21.4V
#define CELL_5_100				3371		//21V
//#define CELL_5_SLOW				3322		//20.7
#define CELL_5_SLOW				3369		//20.99V
#define CELL_5_80				3180		//19.8V

#define CELL_4_FULL				2760		//17.2v电压
#define CELL_4_100				2696		//16.8v电压
#define CELL_4_SLOW				2680		//16.7v电压
#define CELL_4_80				2542		//15.84V


#define VOLT_5_PERCENT_BASE		2408		//15,基数百分比
#define VOLT_4_PERCENT_BASE		1926		//12,基数百分比

#define VOLT_5_PER_BASE			(CELL_5_100 - VOLT_5_PERCENT_BASE)
#define VOLT_4_PER_BASE			(CELL_4_100 - VOLT_4_PERCENT_BASE)

#define CELL_DEAD				803			//5v
#define NO_CELL					599			//3.73V


//电流电压变化范围0.14V~0.03V，参考电压1V
#define CURRENT_CHARGE			573			//0.14v
#define CURRENT_FULL			123			//0.03V


#define LED_NUMBER				2
#define LED_RED_NUM				0
#define LED_GREEN_NUM			1

#define CURRENT_DISPLAY			60


typedef enum
{
	INIT = 0, STAND_BY, ERR, CHARGE_START, CHARGE_DEALY, CHARGE_LONG, CHARGE_80, CHARGE_SLOW, CHARGE_FULL
}SYSTEM_E;	
	


typedef enum
{
	NONE = 0, DEL_1, DEL_2
}VOLT_COMPENSATION;

typedef enum
{
	WRCMD = 0, WR4DATA, WR8DATA
}HT16262_E;


typedef enum
{
	VDD = 0, V3, VREF, V2
}ADC_VREF_E;

typedef enum
{
	ZERO_DIGIT = 0, N1, N2, N3, N4, N5, N6, N7, N8, N9
}LCD_VC_E;

typedef enum
{
	BATTERY_ZERO = 0, BATTERY_1, BATTERY_2, BATTERY_3,BATTERY_CLOSE
}BATTERY_E;
	
typedef enum
{
	STOP_HZ = 0,TWINKLE_20HZ= 24, TWINKLE_10HZ = 49,TWINKLE_5HZ = 124,TWINKLE1_2_5HZ = 399,
	TWINKLE_1HZ = 499, TWINKLE_0_2HZ = 2499
}FREQ_E;
	
typedef enum
{
	PERIPHERAL_ON = 1, PERIPHERAL_OFF, PERIPHERAL_TOGGLE
}PERIPHERAL_STATUS;	

typedef enum
{
	MUSIC_ALL = 1,MUSIC_HEAD, MUSIC_ALARM, MUSIC_OFF
}MUSIC_STATUS;



typedef enum
{
	PROTOCOL_ADC = 0, VOLT_ADC = 1, CURRENT_ADC = 2
}Adc_Channel;



typedef struct _ADC_T{
	ADC12_InputSet_TypeDef channel;
	ADC12_VREFP_VREFN_Selected_TypeDef vref;
}Adc_t;


	
typedef struct _PERIPHERAL_T{
	FREQ_E freq;
	PERIPHERAL_STATUS status;
	uint32_t count;
	void (*ledToggle)(void);
	void (*ledOn)(void);
	void (*ledOff)(void);
}Led_t;



typedef struct _MUSIC_T{
	uint8_t index;
	MUSIC_STATUS status;
	uint32_t beats;
}Music_t;




void delay_nms(unsigned int t);
void delay_nus(unsigned int t);


#endif