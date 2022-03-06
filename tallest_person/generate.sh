#!/bin/bash

as persondata.s -o persondata.o
as tallest.s -o tallest.o
ld persondata.o tallest.o -o tallest
./tallest
echo $?

as browncount.s -o browncount.o
ld persondata.o browncount.o -o browncount
./browncount
echo $?
