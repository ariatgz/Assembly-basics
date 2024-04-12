.section .text
.globl _start
_start:

	#setting zero flag
	movl $0,%eax
	test %eax,%eax	


	movl $1,%eax
	movl $0,%ebx
	int $0x80
