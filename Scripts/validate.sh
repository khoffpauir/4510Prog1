#!/bin/bash
# This script will run AdaPartA B or JavaPartA B against test tiles in the test files directory
#usage: ./runTest.sh <language> <file>
#example: ./runTest.sh java ../Source/JavaPartA.java
lang="$1"
file="$2"
path=""
#set path based on the command line input
if [ $lang == java ]; then
  if [ $file == JavaPartA.java ]; then
    path='../Correct/JavaA'
  elif [ $file == JavaPartB.java ]; then
    path='../Correct/JavaB'
  fi
elif [ $lang  == ada ]; then
  if [ $file == AdaPartA.adb ]; then
    path='../Correct/AdaA'
  elif [ $file == AdaPartB.adb ]; then
    path='../Correct/AdaB'
  fi
fi

for i in {1..7}
do
  file1="$path/out$i"
  file2="../TestFiles/ans$i"
  touch temp1
  touch temp2
  echo $file1
  out= grep -E "[-]*[0-9]*$" $file1 -o > temp1
  ans= cat $file2 > temp2
  #echo "out = "$out
  #echo "ans = "$ans
  if cmp -s "temp2" "temp1"; then
     printf 'Test%i passed\n' "$i"
  else
     printf 'Test%i failed\n' "$i"  
  fi
  rm temp1
  rm temp2
done