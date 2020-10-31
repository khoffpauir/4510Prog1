all:
	gcc ../Source/AdaPartA.adb -c
	gcc ../Source/AdaPartB.adb -c
	gnatbind ../Source/AdaPartA -o ../Source/AdaPartA.adb
	gnatlink ../Source/AdaPartA -o ../Source/AdaPartA.ali
	gnatbind ../Source/AdaPartB -o ../Source/AdaPartA.adb
	gnatlink ../Source/AdaPartB -o ../Source/AdaPartA.adb
