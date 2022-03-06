.globl _start
.section .data
value:
.quad 5
.section .text
_start:
    # Push in the sentinel value
    pushq $0
    # Grab the value
    movq value, %rax
    # Push all the values from 1 to the current value to the stack
pushvalues:
    pushq %rax
    decq %rax
    jnz pushvalues
    # Prepare for multiplying
    movq $1, %rax
multiply:
    # Get the next value from the stack
    popq %rcx
    # If it is the sentinel, we are done
    cmpq $0, %rcx
    je complete
    # multiply by what we have accumulated so far
    mulq %rcx
    # Do it again
    jmp multiply
complete:
    movq %rax, %rdi
    movq $60, %rax
    syscall
