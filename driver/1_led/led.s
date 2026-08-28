.global _start

_start:
	ldr r0, =0x020c4068
	ldr r1, =0xffffffff
	str r1, [r0]
	@ ccgr0

	ldr r0, =0x020c406c
	str r1, [r0]
	@ ccgr1

	ldr r0, =0x020c4070
	str r1, [r0]
	@ ccgr3

	ldr r0, =0x020c4074
	str r1, [r0]
	@ ccgr4

	ldr r0, =0x020c4078
	str r1, [r0]
	@ ccgr5

	ldr r0, =0x020c4080
	str r1, [r0]
	@ ccgr6

	ldr r0, =0x020e0068
	ldr r1, =0x5
	str r1, [r0]
	@ sw_mux_gpio1_io03

	ldr r0, =0x020e02f4
	ldr r1, =0x10b0
	str r1, [r0]
	@ sw_pad_gpio1_io03

	ldr r0, =0x0209c000
	ldr r1, =0x0
	str r1, [r0]
	@ gpio3_dr

	ldr r0, =0x0209c004
	ldr r1, =0x08
	str r1, [r0]

loop:
	b loop
