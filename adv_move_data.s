.section .bss
	.comm mydata,4


.section .text
.global _start
_start:

	nop
	movl $100,mydata
	movl mydata,%ecx # No $ means we want to move the variable's data

	movl $mydata, %edx # The $ means we are moving the address , and not the value,
	
	movl $500, %eax #moving 500 into eax
	movl %eax, (%edx) #Moves the content of eax to the address that edx is pointing to.

	movl $1,%eax
	movl $0,%ebx
	int $0x80
	
