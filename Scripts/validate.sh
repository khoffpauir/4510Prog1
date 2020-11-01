#!/bin/bash
# This script will run AdaPartA B or JavaPartA B against test tiles in the test files directory
#usage: ./runTest.sh <language> <file>
#example: ./runTest.sh java ../Source/JavaPartA.java
lang="$1"
file="$2"
path=""
#set path based on the command line input
#
if [ $lang == java ]; then
  if [ $file == JavaPartA.java ]; then
    path='../Correct/JavaA/'
  elif [ $file == JavaPartB.java ]; then
    path='../Correct/JavaB/'
  fi
elif [ $lang  == ada ]; then
  if [ $file == AdaPartA.adb ]; then
    path='../Correct/AdaA/'
  elif [ $file == AdaPartB.adb ]; then
    path='../Correct/AdaB/'
  fi
fi

for i in {1..7}
do
  file1="$path/out$i"
  file2="../TestFiles/ans$i"
  ans=cat $file2 | head -2
  if cmp -s "$file1" "$ans"; then
      cat $file1
      cat $ans
      printf 'Test%i passed\n' "$i"
  else
      printf 'Test%i failed\n' "$i"
      cat $file1
      cat $ans
  fi
done