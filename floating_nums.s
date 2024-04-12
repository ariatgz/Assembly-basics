.section .data
	myfloat1: .float 1.23
	myfloat2: .double 123.456

.section .bss

	.lcomm data,8

.section .text
.globl _start
_start:

	flds myfloat1
	fldl myfloat2
	fstl data

	movl $1,%eax
	movl $0,%ebx
	int $0x80

