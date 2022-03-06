## What
Pratice assembly language

## Steps
```
# start working environment
docker run -it --rm -v ${PWD}:/my-code johnnyb61820/linux-assembly

#  assemble source code into machine code (object file)
as myexit.s -o myexit.o

# link object file to make it executable
ld myexit.o -o myexit
```
