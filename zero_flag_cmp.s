.section .text
.globl _start

_start:

	movl $4,%eax
	subl $4,%eax
	jz jump_here   

	movl $1,%eax
	movl $6,%ebx
	int $0x80

jump_here:

	movl $1,%eax
	movl $7,%ebx
	int $0x80

