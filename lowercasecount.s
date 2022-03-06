.globl _start
.section .data
mytext:
      .ascii "This is a string of characters.\0"
.section .text
_start:
    ### Initialization
    # Move a pointer to the string into %rbx
    movq $mytext, %rbx
    # Count starts at zero
    movq $0, %rdi
mainloop:
    # Get the next byte
    movb (%rbx), %al
    # Quit if we hit the null terminator
    cmpb $0, %al
    je finish
    # Go to the next byte if the value isn't between a and z
    cmpb $'a', %al
    jb loopcontrol
    cmpb $'z', %al
    ja loopcontrol
    # It's lower-case! Add one to %rdi
    incq %rdi
loopcontrol:
    # Next byte
    incq %rbx
    # Repeat
    jmp mainloop
finish:
    movq $60, %rax
    syscall
