.section .text
.globl _start
_start:

	
	nop 
	#enable set overflow flag
	movl $0x7fffffff,%eax
	addl $1,%eax

	#cler the OF
	xorl %eax,%eax

	movl $1,%eax
	movl $0,%ebx
	int $0x80
