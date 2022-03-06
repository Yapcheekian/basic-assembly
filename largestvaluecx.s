.globl _start
.section .data
# How many data elements we have
numberofnumbers:
    .quad 7
# The data elements themselves
mynumbers:
    .quad 5, 20, 33, 80, 52, 10, 1
# ## This program will find the largest value in the array
.section .text
_start:
    # ## Initialize Registers ###
    # Put the number of elements of the array in %rcx
    movq numberofnumbers, %rcx
    # Use %rdi to hold the current-high value
    movq $0, %rdi
    # ## Check Preconditions ###
    # If there are no numbers, stop
    cmp $0, %rcx
    je endloop
    # ## Main Loop ###
myloop:
    # Get the next value of mynumbers indexed by %rbx
    movq mynumbers-8(,%rcx,8), %rax
    # If it is not bigger, go to the end of the loop
    cmp %rdi, %rax
    jbe loopcontrol
    # Otherwise, store this as the biggest element so far
    movq %rax, %rdi
loopcontrol:
    # Decrement %rcx and keep going until %rcx is zero
    loopq myloop
    # ## Cleanup and Exit ###
endloop:
    # We're done - exit
    movq $60, %rax
    syscall
