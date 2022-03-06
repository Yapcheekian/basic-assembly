#!/bin/bash

as abscall.s -o abscall.o
ld abscall.o -static -lc -o abscall
./abscall
echo $?

gcc absmain.s -static -o absmain
./absmain
echo $?

gcc filewrite.s -static -o filewrite
./filewrite
