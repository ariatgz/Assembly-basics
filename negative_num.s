.section .text
.globl _start
_start:

	#add two byte integers
	movb $-3,%al
	movb $-10,%bl
	addb %al,%bl

	#add to 16 bit integers
	movw $-15,%ax
	movw $50,%bx
	addw %ax,%bx

	#add two 32 bit ints

	movl $100,%eax
	movl $-30,%ebx
	addl %eax,%ebx

	movl $1,%eax
	movl $0,%ebx
	int $0x80
