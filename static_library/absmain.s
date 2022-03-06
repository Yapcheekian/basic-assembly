.globl main
.section .text
main:
    # This is a function, but there are no local variables,
    # so we don't need to create a stack frame.
    # First parameter is -5
    movq $-7, %rdi
    # Call the function
    call abs
    # The result is already in %rax, so we just need to return
    # Since main is called from the standard C library,
    # we just need to return rather than call the exit system call.
    ret
