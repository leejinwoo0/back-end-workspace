package com.kh.test3;

public class Overloading {
	
	public void test() {}
//	public void test(String str) {}
	public void test(int i) {}
	public void test(String s) {}
	public void test(char ch) {}
	public void test(String str, int i) {}
	public void test(int i, String str) {}
//	public void test(int i) {}
//	public void test() {return 0;}

}


//매개변수가 중복되는것들을 제거해줌으로서 정상적으로 구동하게 해준다