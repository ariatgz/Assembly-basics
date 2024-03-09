.section .text
.global _start
_start:
	nop
	movl $25,%eax
	movw $4,%bx
	movb $1,%cl #lower part of ecx, ch would be the high part.
		    # ecx is 32 bit (long), cx is 16 bit (word),cl and ch are 8 bit (byte).
	movl $1,%eax
	movl $0,%ebx
	int $0x80
