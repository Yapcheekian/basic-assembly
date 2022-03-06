## What
Pratice assembly language

## Steps
```bash
# start working environment
docker run -it --rm -v ${PWD}:/my-code johnnyb61820/linux-assembly

#  assemble source code into machine code (object file)
as myexit.s -o results/myexit.o

# link object file to make it executable
ld results/myexit.o -o results/myexit
```

## Register layout
### General purpose register
```
%rax: accumulator (64 bit)
%eax: accumulator (32 bit)
%ax: accumulator (16 bit)
%ah: high byte of %ax
%al: low byte of %ax

%rbx: base (64 bit)
%ebx: base (32 bit)
%bx: base (16 bit)
%bh: high byte of %bx
%bl: low byte of %bx

%rcx: counter (64 bit)
%ecx: counter (32 bit)
%cx: counter (16 bit)
%ch: high byte of %cx
%cl: low byte of %cx

%rdx: data (64 bit)
%edx: data (32 bit)
%dx: data (16 bit)
%dh: high byte of %dx
%dl: low byte of %dx

%rsi: source index
%rdi: destination index
%rbp: base pointer
%rsp: stack pointer

%r8 - %r15
```

### Special-purpose registers
```
%rip: instruction pointer
%eflags: compare and jump
```

### System call register (in order)
```
1. %rdi
2. %rsi
3. %rdx
4. %r10
5. %r8
6. %r9
```

### Jump instruction
```
jz: jump if Zero (jump if the zero flag is set to 1)
jnz: jump if Not Zero (jump if the zero flag is set to 0)
jc: jump if Carry (jump if the carry flag is set to 1)
jnc: jump if No Carry (jump if the carry flag is set to 0)

jo：  jump if the overflow flag is set
jno： jump if overflow flag is not set
js: jump if the sign flag is set
jns: jump if the sign flag is set

je: jump if ARG2 equals ARG1
jne: jump if ARG2 does not equal ARG1
ja: jump if ARG2 is above (greater than) ARG1
jae: jump if ARG2 is above (greater than) or equal to ARG1
jb: jump if ARG2 is below (less than) than ARG1
jbe: jump if ARG2 is below (less than) or equal to ARG1
```
