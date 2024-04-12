.section .data

	myfloat1: .float 1.2,3.6,7.7,4,5.43


.section .text
.globl _start
_start:

	movups myfloat1,%xmm0


	movl $1,%eax
	movl $0,%ebx
	int $0x80
