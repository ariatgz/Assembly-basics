.section .data
	decimal_number: .int 12345678
	hexadecimal_number: .long 0x1234567

.section .text
.globl _start
_start:

	nop

	movl $1,%eax
	movl $0,%ebx
	int $0x80
