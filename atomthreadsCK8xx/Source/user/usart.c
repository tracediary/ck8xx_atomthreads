/**************************************************************************************************
 * @file		init the usart device
 * @brief		
 * @author		Jason.W
 * @date		2021.01.26
 * 
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. No personal names or organizations' names associated with the
 *    Atomthreads project may be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE ATOMTHREADS PROJECT AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
 * TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE PROJECT OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
**************************************************************************************************/

#include "usart.h"




void usartInit(void)
{
	//UART0_DeInit();                                                //clear all UART Register
    //UART_IO_Init(IO_UART0,1);                                     //use PA0.5->RXD0, PA0.12->TXD0
    //UARTInitRxTxIntEn(DEBUG_USART,416,UART_PAR_NONE);	                  //baudrate=sysclock/46=115200
	//UARTInitRxTxIntEn(UART0,416,UART_PAR_NONE);
	
	//UART0_DeInit();                                                //clear all UART Register
    //UART_IO_Init(IO_UART0,0);                                     //use PA0.1->RXD0, PA0.0->TXD0
    //UARTInitRxTxIntEn(UART0,208,UART_PAR_NONE);	                  //baudrate=sysclock/46=115200
	//UART0_Int_Enable();
	UART1_DeInit();
	UART_IO_Init(IO_UART1,0);
	UARTInitRxTxIntEn(UART1,416,UART_PAR_NONE);
	UART1_Int_Enable();
}


#if 0
//redefine the printf to usart0
int fputc(int ch, FILE *f)
{
	UARTTxByte(DEBUG_USART, (uint8_t) ch);
	
	return (ch);
}
#else

int fputc(int ch, FILE *f)
{
	UARTTxByte(UART1, (uint8_t) ch);
	
	return (ch);
}
#endif
