#!/bin/bash

echo "Listing Android files to cscope.files."

find   "$PWD/abi" \
	   "$PWD/bionic"  \
	   "$PWD/bootable" \
	   "$PWD/build"	 \
	   "$PWD/cts"	 \
	   "$PWD/dalvik"	 \
	   "$PWD/development"	 \
	   "$PWD/device"	 \
	   "$PWD/external"	 \
	   "$PWD/frameworks"	 \
	   "$PWD/gdk"	 \
	   "$PWD/hardware"	 \
	   "$PWD/libcore"	 \
	   "$PWD/libnativehelper"	 \
	   "$PWD/ndk"	 \
	   "$PWD/packages"	 \
	   "$PWD/pdk"	 \
	   "$PWD/sdk"	 \
	   "$PWD/system"	 \
	   -path "*.git" -prune -o \
	   -name "*.java" -print -o \
	   -name "*.aidl" -print -o \
       -name "*.hpp" -print -o  \
       -name "*.cpp"  -print -o  \
       -name "*.xml"  -print -o  \
       -name "*.mk"  -print -o \
       -name "*.[chxsS]" -print > cscope.files 

echo "Listing files end."

echo "start generate cscope database..."
/usr/bin/cscope -b -q -k
echo "cscope database generate ok."
