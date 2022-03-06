.globl _start
.section .text
_start:
    # Call exponent with 3 and 2
    movq $3, %rdi
    movq $2, %rsi
    call exponent
    # result is now in %rax
    movq %rax, %rdi
    movq $60, %rax
    syscall
