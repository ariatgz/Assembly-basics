.section .text
.globl _start
_start:
	movl $3,%eax
	movl $5,%ebx

	xchg %eax,%ebx
	
	movl $0x12345678,%ecx
	bswap %ecx

	movl $1,%eax
	movl $0,%ebx
	int $0x80
