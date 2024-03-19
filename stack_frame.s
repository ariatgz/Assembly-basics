.section .text
.globl _start
_start:
	nop
	
	#copy the esp address address to ebp
	movl %esp,%ebp
	#create some space in stack frame
	subl $8,%esp

	#adding the data in stack
	movl $100,%eax
	pushl %eax

	movl $200,%ebx
	pushl %ebx

	#remove from stack
	popl %ebx
	popl %eax


	movl $1,%eax
	movl $0,%ebx
	int $0x80
