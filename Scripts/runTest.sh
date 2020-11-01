#!/bin/bash
# This script will run AdaPartA B or JavaPartA B against test tiles in the test files directory
#usage: ./runTest.sh <language> <file>
#example: ./runTest.sh java ../Source/JavaPartA.java
lang="$1"
file="$2"
if [ $lang == java ]; then
  if [ $file == JavaPartA.java ]; then
    ./JavaA.sh
  elif [ $file == JavaPartB.java ]; then
    ./JavaB.sh
  fi
elif [ $lang  == ada ]; then
  if [ $file == AdaPartA.adb ]; then
    ./AdaA.sh
  elif [ $file == AdaPartB.adb ]; then
    ./AdaB.sh
  fi
fi