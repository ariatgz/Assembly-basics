.section .text
.globl _start

_start:
	#parity flag is set when the result of an operation is even.
	movb $0xAA,%al
	test %al,%al # test is an and operation

	movb $0xA9,%al
	test %al,%al


	movl $1,%eax
	movl $0,%ebx
	int $0x80
