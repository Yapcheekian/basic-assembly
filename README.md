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
