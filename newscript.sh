#!/bin/bash

# copy the output of top command into cpumem.txt
# then print cpu and memory usage
top -b -n 1 > cpumem.txt
grep "Cpu(s)" cpumem.txt
grep "Mem" cpumem.txt | head -1

# copy output of hostnamectl command into linuxos.txt
# then print the OS in use
hostnamectl > linuxos.txt
grep "Operating" linuxos.txt

rm cpumem.txt
rm linuxos.txt