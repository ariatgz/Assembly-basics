.section .text
.globl _start
_start:

	movl $-1,%eax
	test %eax,%eax

	movl $42, %eax
	test %eax,%eax

	nop

	movl $1,%eax
	movl $0,%ebx
	int $0x80
