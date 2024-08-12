package com.kh.test5;

import java.util.ArrayList;
import java.util.Scanner;

import com.kh.test5.model.Food;

public class Application {

	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		Food food = new Food();
		
		while(true) {
			System.out.println("=== 음식 메뉴 리스트===");
			System.out.println("1. 음식 추가");
			System.out.println("2. 음식 정보");
			System.out.println("3. 음식 삭제");
			System.out.println("4. 프로그램 종료");
			System.out.print("번호 선택 : ");
			int num = Integer.parseInt(sc.nextLine());
			if(num == 1) {
				System.out.print("추가할 음식 입력 : ");
				String name = sc.nextLine();
				System.out.print("칼로리 입력 : ");
				int kcal = Integer.parseInt(sc.nextLine());
				food = new Food(name, kcal);
				System.out.println("음식 정보가 추가 되었습니다 ");
				
			
			} else if(num == 2) {
				System.out.println(food);
			}else if(num == 3) {
			 System.out.println("삭제하고 싶은 음식 선택");
			 String name = sc.nextLine();
			 System.out.println(food + "가 삭제되었습니다.");
			 food = null;
			}else if (num == 4) {
				break;
			}
		}
		
		
	} 

}
