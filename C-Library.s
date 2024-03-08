.section .data
	msg:
		.ascii "Hello World\n"
.section .text
.global _start
_start:
	
	pushl $msg
	call printf

	pushl $0
	call exit
