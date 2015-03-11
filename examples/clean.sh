#!/bin/sh

rm -rf bin
mkdir -p bin
mkdir -p bin/example1
mkdir -p bin/example2
cp example1/libs/armeabi-v7a/* bin/example1
cp example2/libs/armeabi-v7a/* bin/example2

echo "Copied binaries to bin folder."
