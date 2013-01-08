#!/bin/bash

find . -name '*.java' -print -o \
	   -name '*.aidl' -print -o \
       -name '*.hpp' -print -o  \
       -name '*.cpp'  -print -o  \
       -name '*.xml'  -print -o  \
       -name '*.mk'  -print -o \
       -name '*.[chxsS]' -print > cscope.files 

/usr/bin/cscope -b -q -k
