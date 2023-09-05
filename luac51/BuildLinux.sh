#!/bin/bash

for filename in ./src/*.c; do
	gcc -g -c "$filename" -o "./build/$(basename "$filename" .c).o" -O2 -fPIC
done

gcc ./build/*.o -shared -o ../DominoVisualizer/luac51.so
