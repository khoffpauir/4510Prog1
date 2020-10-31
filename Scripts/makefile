all:
	gcc -c ../Source/AdaPartA.adb 
	gcc -c ../Source/AdaPartB.adb 
	gnatbind ../Source/AdaPartA -o ../Source/AdaPartA.adb
	gnatlink ../Source/AdaPartA -o ../Source/AdaPartA.ali
	gnatbind ../Source/AdaPartB -o ../Source/AdaPartA.adb
	gnatlink ../Source/AdaPartB -o ../Source/AdaPartA.adb
