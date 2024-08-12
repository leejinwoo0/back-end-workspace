package com.kh.test5;

import java.util.Scanner;

public class Application {
	
	Scanner sc = new Scanner;
	Food food =  new food;
	
	while(true) {
		System.out.println("===음식 메뉴 리스트===");
		System.out.println("1.음식 추가");
	    System.out.println("2.음식 정보");
	    System.out.println("3.음식 삭제");
	    System.out.println("프로그램 종료");
	    System.out.println("번호선택");
	    
	    int num = sc.nextInt();
	} if (num == 1) {
		System.out.println("추가할 음식 입력");
		String name = sc.nextLine();
		System.out.println("칼로리 입력");
		int kcal = Integer.parseInt();
		
		
	}else if (num ==2) {
		System.out.println(food);
		
	}else if(num ==3) {
	   System.out.println(food + "삭제 하고 싶은 음식 선택");
	   Food food = null;
	}else if(num==4) {
		break;
	}
} 

//food를 변수로 하는 객체사용
//model Food 생성