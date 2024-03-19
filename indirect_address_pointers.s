.section .data
	
	MyNumber:
		.int 4,8

.section .text
.globl _start

_start:
	
	movl $MyNumber,%eax
	movl $2,(%eax)
	movb $9, 2(%eax) #moves the byte to second index
	movw $3,6(%eax)	#moves two byte to 6th element.
