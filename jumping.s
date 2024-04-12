.section .text
.globl _start
_start:
	
	movl $4,%eax
	movl $4,%ebx

	cmp %eax,%ebx
	
	je jump_here

	movl $1,%eax
	movl $0,%ebx
	int $0x80	

jump_here:
	movl $1,%eax
	movl $0,%ebx
	int $0x80
