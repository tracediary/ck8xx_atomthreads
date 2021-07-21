/*
  Copyright (c) 2021, Tracediary. All rights reserved.
 
  Redistribution and use in source and binary forms, with or without
  modification, are permitted provided that the following conditions
  are met:
 
  1. Redistributions of source code must retain the above copyright
     notice, this list of conditions and the following disclaimer.
  2. Redistributions in binary form must reproduce the above copyright
     notice, this list of conditions and the following disclaimer in the
     documentation and/or other materials provided with the distribution.
  3. No personal names or organizations' names associated with the
     Atomthreads project may be used to endorse or promote products
     derived from this software without specific prior written permission.
 
  THIS SOFTWARE IS PROVIDED BY THE ATOMTHREADS PROJECT AND CONTRIBUTORS
  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
  TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
  PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE PROJECT OR CONTRIBUTORS BE
  LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
  CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
  SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
  INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
  CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
  POSSIBILITY OF SUCH DAMAGE.
*/


.export    archContextSwitch
.export    _archFirstThreadRestore
//.export    _contextEnableInterrupts


/**
 * \b archContextSwitch
 *
 * Architecture-specific context switch routine.
 *
 * Note that interrupts are always locked out when this routine is
 * called. For cooperative switches, the scheduler will have entered
 * a critical region. For preemptions (called from an ISR), the
 * ISR will have disabled interrupts on entry.
 *
 * @param[in] old_tcb_ptr Pointer to the thread being scheduled out
 * @param[in] new_tcb_ptr Pointer to the thread being scheduled in
 *
 * @return None
 *
 * void archContextSwitch (ATOM_TCB *old_tcb_ptr, ATOM_TCB *new_tcb_ptr)
 */
archContextSwitch:
    push      	r4-r8, r15             /* Save registers */

    st.w        r14, (r0)                        /* Save old SP in old_tcb_ptr->sp_save_ptr (first TCB element) */
    ld.w        r1, (r1)                        /* Load new SP from new_tcb_ptr->sp_save_ptr (first TCB element) */
    MOV         r14, r1                           

    pop			r4-r8,r15             /* Load new registers */


/**
 * \b archFirstThreadRestore
 *
 * Architecture-specific function to restore and start the first thread.
 * This is called by atomOSStart() when the OS is starting.
 *
 * This function will be largely similar to the latter half of
 * archContextSwitch(). Its job is to restore the context for the
 * first thread, and finally enable interrupts (although we actually
 * enable interrupts in thread_shell() for new threads in this port
 * rather than doing it explicitly here).
 *
 * It expects to see the context saved in the same way as if the
 * thread has been previously scheduled out, and had its context
 * saved. That is, archThreadContextInit() will have been called
 * first (via atomThreadCreate()) to create a "fake" context save
 * area, containing the relevant register-save values for a thread
 * restore.
 *
 * Note that you can create more than one thread before starting
 * the OS - only one thread is restored using this function, so
 * all other threads are actually restored by archContextSwitch().
 * This is another reminder that the initial context set up by
 * archThreadContextInit() must look the same whether restored by
 * archFirstThreadRestore() or archContextSwitch().
 *
 * @param[in] new_tcb_ptr Pointer to the thread being scheduled in
 *
 * @return None
 *
 * void _archFirstThreadRestore (ATOM_TCB *new_tcb_ptr)
 */
_archFirstThreadRestore:

    ld.w        r0, (r0)                        /* Get SP (sp_save_ptr is conveniently first element of TCB) */
    MOV         r14, r0                          /* Load new stack pointer */
    pop			r4-r8, r15             /* Load new registers */


_contextEnableInterrupts:
	psrset		ee,ie