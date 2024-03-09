.section .bss
	.comm mydata,4


.section .text
.global _start
_start:

	nop
	movl $100,%ecx

	movl mydata,%ecx # No $ means we want to move the variable's data

	movl $mydata, %edx # The $ means we are moving the address , and not the value,

	
