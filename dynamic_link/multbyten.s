.globl multbyten
.section .data
ten:
    .quad 10
.section .text
multbyten:
    movq ten(%rip), %rax
    imulq %rdi
    ret
