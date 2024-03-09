.section .bss

	.comm buffer, 15


.section .text
.global _start

_start: 
	# read syscall for user input
	movl $3, %eax
	movl $0,%ebx # file descriptor for input
	movl $buffer,%ecx	 
	movl $15,%edx
	int $0x80
	#write syscall to print out the buffer
	movl $4,%eax
	movl $1,%ebx
	movl $buffer,%ecx
	movl $15,%edx
	int $0x80

	#exit
	movl $1, %eax
	movl $0, %ebx
	int $0x80

