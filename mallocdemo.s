.globl main
.section .data
scanformat:
    .ascii "%499s\0"
outformat:
    .ascii "%s\n\0"
.section .text
.equ LOCAL_BUFFER, -8
main:
    # Allocate one local variable (aligned to 16 bytes)
    enter $16, $0
    # Get the memory and store it in our local variable
    movq $500, %rdi
    call malloc
    movq %rax, LOCAL_BUFFER(%rbp)
    movq $5, (%rax)
    # Read the data from stdin
    movq stdin, %rdi
    movq $scanformat, %rsi
    movq LOCAL_BUFFER(%rbp), %rdx
    movq $0, %rax
    call fscanf
    # Write the data to stdout
    movq stdout, %rdi
    movq $outformat, %rsi
    movq LOCAL_BUFFER(%rbp), %rdx
    movq $0, %rax
    call fprintf
    # Free the buffer
    movq LOCAL_BUFFER(%rbp), %rdi
    call free
    # Return
    movq $0, %rax
    leave
    ret
