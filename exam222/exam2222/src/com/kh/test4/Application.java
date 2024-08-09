package com.kh.test4;

import java.util.ArrayList;
import java.util.List;

public class Application {

	public static void main(String[] args) {
		List<Fruit> list = new ArrayList<>();
		list.add(new Fruit("사과", "빨강"));
		list.add(new Fruit("메론", "초록"));
		list.add(new Fruit("포도", "보라"));
//		list.add("바나나");
		
		for(int i = 0; i < list.size(); i ++) {
			System.out.println(list[i].getName());
		}
	}

}

//
//바나나가 아닌 fruit가 들어와야하므로 사용하지않을거면 그절을 없앤다
//list.length 를 list .size로 바꿔야한다.