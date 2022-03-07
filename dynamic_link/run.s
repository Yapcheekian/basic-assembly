.global main
.section .data
value:
    .quad 6
output:
    .ascii "The square of %d is %d\n\0"
.section .text
main:
    enter $0, $0
    movq value, %rdi
    call squareme
    movq stdout, %rdi
    movq $output, %rsi
    movq value, %rdx
    movq %rax, %rcx
    call fprintf
    leave
    ret
