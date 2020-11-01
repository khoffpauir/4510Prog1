#!/bin/bash
# This script will compile AdaPart A or B or Java part A or B given command line arguments
#usage: ./compile.sh <language> <file>
#example: ./compile.sh java ../Source/JavaPartA.java
lang="$1"
file="$2"
if [ $lang == java ]; then
  if [ $file == JavaPartA.java ]; then
    javac ../Source/JavaPartA.java
  elif [ $file == JavaPartB.java ]; then
    javac ../Source/JavaPartB.java
  fi
elif [ $lang  == ada ]; then
  if [ $file == AdaPartA.adb ]; then
    gcc ../Source/AdaPartA.adb -c -o ../Source/AdaPartA.o
    gnatbind ../Source/AdaPartA
    gnatlink ../Source/AdaPartA
  elif [ $file == AdaPartB.adb ]; then
    gcc ../Source/AdaPartB.adb -c -o ../Source/AdaPartB.o
    gnatbind ../Source/AdaPartB
    gnatlink ../Source/AdaPartB
  fi
fi