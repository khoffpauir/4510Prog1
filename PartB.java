package com.khoffpauir;
import java.util.Scanner;

public class PartB {

  public static void main(String[] args) {
        /*
            output: enter 2 integers to be added together
            Input: 2 numbers that need to be added
            responds with output x "+" y "= " sum
         */
    System.out.println("Enter 2 integers to be added together");
    Scanner in = new Scanner(System.in);
    int x = in.nextInt();
    x = Math.abs(x);
    int y = in.nextInt();
    y = Math.abs(y);
    in.nextLine();
    int z = x + y;
    System.out.println(x + " + " + y + " = " + z);
  }
}
