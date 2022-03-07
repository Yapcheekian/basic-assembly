#!/bin/bash

# static link
gcc -static link.s -o link
./link

# huge size
ls -l link

# dynamic link
gcc -rdynamic link.s -o link
ls -l link

# static link
gcc -static squareme.s run.s -o run
./run

# build squreme into a library
gcc -shared squareme.s -o libmymath.so

# dynamic link
# -L: which directory to find shared library
# -lmymath: libmymath.so
gcc run.s -lmymath -L . -o run

LD_LIBRARY_PATH=. ./run

gcc -shared printstuff.s multbyten.s squareme.s -o libmymath.so
gcc -rdynamic mymath.c -lmymath -L . -o mymath
LD_LIBRARY_PATH=. ./mymath
