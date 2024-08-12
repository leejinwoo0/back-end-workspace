package com.kh.test4;

import java.util.ArrayList;
import java.util.List;

public class Application {

	public static void main(String[] args) {
		
		List<Fruit> list = new ArrayList<>();
		list.add(new Fruit ("사과", "빨강"));
		list.add(new Fruit ("메론", "초록"));
		list.add(new Fruit ("포도", "보라"));
//		list.add("바나나");
		
		for(int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i));
		}

	}

}

//Fruit 클래스 생성해주기
//길이를 재는거므로 length가아니라 size
//list[i] 를 list.get(i)로변경
//list.add("바나나")절 제거
//getName() 제거하기