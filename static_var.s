.section .data
	msg:
		.ascii "Hello World\n"

	.equ string_size, 13


.section .text
.global _start
_start:
	movl $4,%eax
	movl $1,%ebx
	movl $msg,%ecx
	movl $string_size,%edx
	int $0x80

	movl $1,%eax
	movl $0,%ebx
	int $0x80
	
