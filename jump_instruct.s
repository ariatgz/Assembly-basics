.section .text
.globl _start
_start:

	mov $1,%eax
	mov $2,%ebx

	call jump_here

	mov $1,%eax
	mov $0,%ebx
	int $0x80

jump_here:
	movl $100,%eax
	movl $200,%ebx
	ret
