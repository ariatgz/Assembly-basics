.section .text
.globl _start

_start:
	
	#set the carry flag
	stc
	
	#clear the flag
	clc

	nop

	movl $1,%eax
	movl $0,%ebx
	int $0x80
