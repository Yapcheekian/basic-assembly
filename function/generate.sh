#!/bin/bash

as exponentfunc.s -o exponentfunc.o
as runexponent.s -o runexponent.o
ld exponentfunc.o runexponent.o -o runexponent
./runexponent
echo $?

gcc runexponent.c exponentfunc.s -o runexponent2
./runexponent2
echo $?
