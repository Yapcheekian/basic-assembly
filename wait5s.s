.globl _start
.section .data
curtime:
    # The time will be stored here
    .quad 0
.section .text
_start:
    ### Initialize
    # Get the initial time
    movq $0xc9, %rax
    movq $curtime, %rdi
    syscall
    # Store it in %rdx
    movq curtime, %rdx
    # Add 5 seconds
    addq $5, %rdx
timeloop:
    # Check the time
    movq $0xc9, %rax
    movq $curtime, %rdi
    syscall
    # If I haven't reached the time specified in %rdx, do it again
    cmpq %rdx, curtime
    jb timeloop
timefinish:
    # Exit
    movq $0x3c, %rax
    movq $0, %rdi
    syscall
