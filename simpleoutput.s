.globl _start
.section .data
mystring:
    .ascii "Hello there!\n"
mystring_end:
.equ mystring_length, mystring_end - mystring
.section .text
_start:
    ### Display the string
    # System call number
    movq $1, %rax
    # File descriptor
    movq $1, %rdi
    # Pointer to the data
    movq $mystring, %rsi
    # Length of the data
    movq $mystring_length, %rdx
    syscall
    ### Exit
    movq $0x3c, %rax
    movq $0, %rdi
    syscall
