.section .data 
	value1: .int 1,2
.section .text
.globl _start
_start:

	movq value1,%mm0

	movl $1,%eax
	movl $0,%ebx
	int $0x80

