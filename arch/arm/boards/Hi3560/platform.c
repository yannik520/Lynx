/*
 * Copyright (c) 2013 Yannik Li(Yanqing Li)
 *
 * Permission is hereby granted, free of charge, to any person obtaining
 * a copy of this software and associated documentation files
 * (the "Software"), to deal in the Software without restriction,
 * including without limitation the rights to use, copy, modify, merge,
 * publish, distribute, sublicense, and/or sell copies of the Software,
 * and to permit persons to whom the Software is furnished to do so,
 * subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
 * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
 * IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
 * CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
 * TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
 * SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */
#include <arch/text.h>
#include <arch/interrupts.h>
#include <arch/timer.h>
#include <arch/platform.h>
#include <arch/cpu.h>
#include <kernel/printk.h>

void arch_idle(void)
{
	cpu_do_idle();
}

void arch_cpu_reset(unsigned long addr)
{
	cpu_reset(addr);
}

void console_init(void)
{
	_console_init();
}

void platform_init(void)
{
	/* init interrupt controller */
	platform_init_interrupts();

	/* init serial port */
	console_init();

	/* init timmer for kernel tick */
	platform_init_timer();
	//platform_set_periodic_timer(timer_tick, 0, 10); /* 10ms */
}
