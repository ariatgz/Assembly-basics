.section .data
	
	Numbers:
		.int 10,20,30,40,50,60

.section .text
.globl _start
_start:

	#formula for accessing elements
	#base_address(offset_address,index,size)
	
	#Number(,2,4)
	
	movl $2,%edi
	movl Numbers(,%edi,4),%eax


	movl $1,%eax
	movl $0,%ebx
	int $0x80
	
