.section .data
	
	myNumber: .byte  255
.section .text
.globl _start

	movb myNumber,%al # moving one byte to lower eax register

	movl $1,%eax
	movl $0,%ebx
	int $0x80
