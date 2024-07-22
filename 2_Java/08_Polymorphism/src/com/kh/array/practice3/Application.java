package com.kh.array.practice3;

import java.util.Scanner;

import com.kh.array.practice3.controller.MemberController;

public class Application {
	
	
    
	
	public static void main(String[] args) {
//<<<<<<< HEAD
		Scanner sc = new Scanner(System.in);
		
		System.out.println("이름 : ");
		String name = sc.nextLine();
		System.out.println("나이 : ");
		int age = sc.nextInt();
		
		System.out.println("===== 메뉴 ======");
		System.out.println("1. 마이페이지");
		System.out.println("2. 도서 대여하기");
		System.out.println("3. 프로그램 종료하기");
        System.out.println("메뉴 번호 : ");
		
        int num1 = sc.nextInt();
        Switch(num1){
        	case 1: Member [name=김미경, age=16, coupon=0, bookList=[null, null]]
        }
=======
		

>>>>>>> 561e309994b0a5ee1eefa77d35bfdc8cc3761c52
	}
	
	public void mainMenu() {
	
	}
	
	public void insertMember() {
		
	}

	public void updateMember() {
		
	}
	
	public void printAll() {
		
	} 
}
