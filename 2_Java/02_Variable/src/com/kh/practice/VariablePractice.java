package com.kh.practice;

import java.util.Scanner;

public class VariablePractice {
	
	public static void main(String[] args) {
		VariablePractice variable = new VariablePractice();
		variable.method1();
		variable.method2();
		variable.method3();
		variable.method4();
		variable.method5();
		variable.method6();
		variable.method7();
	}
	
	/*
	 * 영화관의 요금표는 다음과 같다.
	 *  - 성인 : 10000원
	 *  - 청소년 : 7000원
	 * 
	 * 성인 2명과 청소년 3명이 영화를 보려고 할 때 지불해야 할 금액을 계산 후 출력하세요.
	 * */
	public void method1() {
		int 성인 = 10000;
		int 청소년 = 7000;
		System.out.println((성인 * 2) + (청소년 * 3));
	}
	
	/*
	 * x=5, y=7, z=9의 값을 직접 변경하지 않고 변수를 사용하여
	 * 
	 * x=7
	 * y=9
	 * z=5
	 * 
	 * 로 출력하세요.
	 * */
	public void method2() {
		int x = 5;
		int y = 7;
		int z = 9;
		System.out.println("x=" + x);
		System.out.println("y=" + y);
		System.out.println("z=" + z);
		
		
	}

	/*
	 * 정수 두 개를 입력 받아 두 수의 합(+), 차(-), 곱(*), 나누기(/)한 몫을 출력하세요.
	 * 
	 * 첫 번째 정수 : 23
	 * 두 번째 정수 : 7
	 * 더하기 : 30
	 * 빼기 : 16
	 * 곱하기 : 161
	 * 나누기 몫 : 3
	 * */
	public void method3() {
		Scanner sc = new Scanner(System.in);
		
		
		
        System.out.print("첫 번째 정수");
        int q = sc.nextInt();
        
        System.out.print("두 번째 정수");
        int t = sc.nextInt();
        
        
        System.out.print("더하기");
        String sum = sc.next();
        
        
        System.out.print("빼기");
        String minus = sc.next();
        
        System.out.println("첫 번째 정수" + q + "\n 두 번째 정수" + t + "\n 더하기" + (q + t) + "\n 빼기" + (q - t));
        
        
	}

	/*
	 * 키보드로 가로, 세로 값을 입력 받아 사각형의 면적과 둘레를 계산하여 출력하세요.
	 * 공식) 면적 : 가로 * 세로
	 *       둘레 : (가로 + 세로) * 2
	 * 
	 * 가로 : 13.5
	 * 세로 : 41.7
	 * 면적 : 562.95
	 * 둘레 : 110.4
	 * */
	public void method4() {
            double q = 13.5;
            double t = 41.7;
            System.out.println(q * t);
            System.out.println((q + t) * 2);
		
		
	}

	/*
	 * 영어 문자열 값을 입력 받아 문자에서 첫번째, 두번째, 마지막 글자(문자열.length())를 출력하세요.
	 * 
	 * 문자열을 입력하세요 : apple
	 * 첫번째 문자 : a
	 * 두번째 문자 : p
	 * 마지막 문자 : e
	 * */
	public void method5() {
		String str= "apple";
		char c = 'a';
		char d = 'p';
		char e = 'e';
		System.out.printf("%c\n", c);
		System.out.printf("%c\n", d);
		System.out.printf("%c\n", e);
		System.out.printf("%s", str);
	}
	

	/*
	 * 문자 하나를 입력 받아 그 문자와 다음 문자의 유니코드를 출력하세요.
	 * 
	 * 문자 : A
	 * A unicode : 65
	 * B unicode : 66
	 * */
	public void method6() {

	}
	
	/*
	 * 국어, 영어, 수학 세 과목의 점수를 입력 받아 총점과 평균을 출력하세요.
	 * 
	 * 국어 : 75
	 * 영어 : 63
	 * 수학 : 80
	 * 총점 : 218
	 * 평균 : 72.67
	 * */
	public void method7() {

	}

}
