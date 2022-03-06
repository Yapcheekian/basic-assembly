.globl _start
.section .text
_start:
    ### Initialize Registers ###
    # Pointer to first record
    leaq people, %rbx
    # Total record count
    movq numpeople, %rcx
    # Brown-hair count
    movq $0, %rdi
    ### Check Preconditions ###
    # if there are no records, finish
    cmpq $0, %rcx
    je finish
    ### Main Loop ###
mainloop:
    # Is the hair color brown (2)?
    cmpq $2, HAIR_OFFSET(%rbx)
    # No?  Go to next record
    jne endloop
    # Yes?  Increment the count
    incq %rdi
endloop:
    addq $PERSON_RECORD_SIZE, %rbx
    loopq mainloop
finish:
    movq $60, %rax
    syscall
