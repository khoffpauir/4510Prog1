# 4510Prog1
## Kyle Hoffpauir
## 11/1/2020

To run all programs navigate to the Scripts dir and use ./All.sh <lang> <file>
The Following are acceptable lang args (case-sensivite):
- ada
- java

The following are acceptable file args (case-sensitive, must include file ending):
- AdaPartA.adb
- AdaPartB.adb
- JavaPartA.java
- JavaPartB.java

If the ada lang arg is given to a java file arg, the program will crash.
If the file arg given is not exactly as stated above, the program will crash.

These programs take in two numbers and add them together
The A version of each program does it logically, whereas the B version ignores any negative symbol a number may have.

## The Scripts Dir contains all the scripts the program can run
- All.sh runs all three scripts in order given the lang and file args (compile.sh -> runTest.sh -> validate.sh)
- compile.sh runs the javac compiler and gnat compilers for the given program 
- runTest.sh runs the test data against the compiled programs
- validate.sh compares the outputted data against the correct arithmatic expression of each prog

## The Correct Dir contains the output of the files after the runTest.sh script is run

## The TestFiles Dir contains the files inputted to the compiled programs and the correct answers

## The Source Dir contains the actual files of the programs.

