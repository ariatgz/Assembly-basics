.section .data

	msg1: .ascii "Carry detected\n"
	msg2: .ascii "No carry is there\n"

.section .text
.globl _start
_start:

	movb $128,%al
	movb $128,%bl
	addb %al,%bl

	jc carry_handler
	
	movl $4,%eax
        movl $1,%ebx
        movl $msg2,%ecx
        movl $18,%edx
        int $0x80
	jmp safe_exit

safe_exit:
	movl $1,%eax
	movl $0,%ebx
	int $0x80

carry_handler:
	
	movl $4,%eax
	movl $1,%ebx
	movl $msg1,%ecx
	movl $18,%edx
	int $0x80
	jmp safe_exit
