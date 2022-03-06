.section .data
.globl people, numpeople
numpeople:
    # Calculate the number of people in array
    .quad (endpeople - people)/PERSON_RECORD_SIZE
people:
    # Array of people
    .quad 200, 2, 74, 20
    .quad 280, 2, 72, 44 # me!
    .quad 150, 1, 68, 30
    .quad 250, 3, 75, 24
    .quad 250, 2, 70, 11
    .quad 180, 5, 69, 65
endpeople: # Marks the end of the array for calculation purposes
# Describe the components of the struct
.globl WEIGHT_OFFSET, HAIR_OFFSET, HEIGHT_OFFSET, AGE_OFFSET
.equ WEIGHT_OFFSET, 0
.equ HAIR_OFFSET, 8
.equ HEIGHT_OFFSET, 16
.equ AGE_OFFSET, 24
# Total size of the struct
.globl PERSON_RECORD_SIZE
.equ PERSON_RECORD_SIZE, 32
