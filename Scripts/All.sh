#!/bin/bash
lang="$1"
file="$2"

./compile.sh $lang $file
./runTest.sh $lang $file
./validate.sh $lang $file
