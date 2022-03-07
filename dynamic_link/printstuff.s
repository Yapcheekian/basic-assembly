.globl printstuff
.section .data
mytext:
    .ascii "hello there\n\0"
.section .text
printstuff:
    enter $0, $0
    movq stdout@GOTPCREL(%rip), %rdi
    movq (%rdi), %rdi
    leaq mytext(%rip), %rsi
    call fprintf@plt
    leave
    ret
