.globl _start
.section .text
_start:
    # Call factorial with 4
    movq $4, %rdi
    call factorial
    # result is now in %rax
    movq %rax, %rdi
    movq $60, %rax
    syscall
