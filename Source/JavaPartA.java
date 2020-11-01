package com.khoffpauir;
import java.util.Scanner;

public class JavaPartA {

    public static void main(String[] args) {
        /*
            output: enter 2 integers to be added together
            Input: 2 numbers that need to be added
            responds with output x "+" y "= " sum
         */
        System.out.println("Enter 2 integers to be added together");
        Scanner in = new Scanner(System.in);
        int x = in.nextInt();
        int y = in.nextInt();
        in.nextLine();
        int z = x + y;
        System.out.println(x + " + " + y + " = " + z);
    }
}
