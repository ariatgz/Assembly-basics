.section .data
	string:
		.ascii "Hello World!"
	a: 
		.int 3
	pi:
		.float 3.14
.section .text
.global _start
_start: 
	movl $1,%eax
	movl $0,%ebx
	int $0x80
