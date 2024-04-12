.section .data

	value1: .int 1,2,3,4
	value2: .byte 1,2,3,4,5,6,7,8

.section .text
.globl _start
_start:

	nop
	movdqa value1,%xmm0
	movdqa value2,%xmm1

	movl $1,%eax
	movl $0,%ebx
	int $0x80
