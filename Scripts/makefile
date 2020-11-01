all:
	gcc ../Source/AdaPartA.adb -c -o ../Source/AdaPartA.o
	gcc ../Source/AdaPartB.adb -c -o ../Source/AdaPartB.o
	gnatbind ../Source/AdaPartA
	gnatlink ../Source/AdaPartA 
	gnatbind ../Source/AdaPartB 
	gnatlink ../Source/AdaPartB 

	javac ../Source/JavaPartA.java
	javac ../Source/JavaPartB.java