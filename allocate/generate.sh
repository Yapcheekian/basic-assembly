#!/bin/bash

gcc -static allocate.s usealloc.c -o usealloc
./usealloc
