.globl squareme
.section .text
squareme:
    movq %rdi, %rax
    imulq %rdi
    ret
