package com.kh.test;

import java.util.Scanner;

public class Test {

	public static void main(String[] args) {
		Scanner sc= new Scanner(System.in);
		
		while(true) {
			System.out.print("문자열을 입력해주세요 : ");
			String str = sc.nextLine();
			if(Str == "exit") {
				break;
			}else {
				System.out.println(str.length() + "글자입니다.");
			}
		}
		
		System.out.println("프로그램을 종료합니다.");

	}

}
//while 옆 조건 false 일경우 조건성립이 애초에 불가하기 때문에 true가 들어가야한다
//
//while 절에 break가 없을 경우 반복이 끝나지않으므로 continue 를 break 로바꾼다
//
//length 는 클래스가 아니라서 length()로 바꿔준다.
//
//nextInt는 숫자일경우 문자열이기 떄문에 nextLine으로 바꿔준다