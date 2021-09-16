/**************************************************************************************************
 * @file		init the usart device
 * @brief		
 * @author		Jason.W
 * @date		2021.07.16
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

#include "atom.h"
#include "atomport-private.h"
#include "apt32f102.h"
#include "apt32f102_coret.h"
#include "apt32f102_syscon.h"
/**
 * \b avrInitSystemTickTimer
 *
 * Initialise the system tick timer. Uses the AVR's timer1 facility.
 *
 * @return None
 */
void aptInitSystemTickTimer ( void )
{
    /* Set oret as OS's system tick handler. */
    CORET_DeInit();
	SYSCON_General_CMD(ENABLE,ENDIS_SYSTICK);
	CK801->CORET_RVR=5999;								//CORETCLK=sysclock/8=48M/8=6Mhz  e.g:1ms=(CORET_RVR+1)*(8/48M);CORET_RVR=6000-1=5999
	CORET_reload();																
	CORET_CLKSOURCE_EX();								//use ex clock
	CORET_TICKINT_Enable();								//clear CORET counter
	CORET_start();	
	
	//CORET_Int_Enable();
}

void openInt()
{
	//CK_CPU_EnAllNormalIrq();
	asm  ("psrset ee,ie");
	CORET_Int_Enable();
}