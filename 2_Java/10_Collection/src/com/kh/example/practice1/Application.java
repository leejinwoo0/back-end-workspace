package com.kh.example.practice1;

import java.util.ArrayList;
import java.util.Scanner;

public class Application {
	static Scanner sc = new Scanner(System.in);

	public static void main(String[] args) {
		
//		중복x 해쉬셋, 반복문 while for 
		
		ArrayList<String> list = new ArrayList<String>();
		
		list.add("로또 번호 : ");
		list.add("내 번호 : ");
		list.add("로또 번호 : ");
		list.add("내 번호 : ");
		list.add("로또 번호 : ");
		list.add("내 번호 : ");
		
		System.out.println(list);
		int random = (int) (Math.random() * 45 + 1);
		int count = 0;
		while (true) {
			count++;
			System.out.println("내 번호 : " );
			int num = sc.nextInt();
			if(random != num) {
				System.out.println("로또 번호");
			} else if (random == num) {
				System.out.println();
			}
			
		}
			
	
	
	}

}
