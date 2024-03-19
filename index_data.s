.section .data
	my_list:
	     .int 11,22,33
.section .text
.globl _start

_start:
	
	#base_add(offset,index,size)
	
	movl  $2,%edi
	movl  my_list(,%edi,4),%ecx
	
