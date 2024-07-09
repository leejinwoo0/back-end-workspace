package com.kh.example.practice1.model;

public class Lotto {
	
	private String number;
	private String count;
	
	public Lotto(String number, String count) {
		this.number = number;
		this.count = count;
	}

	@Override
	public String toString() {
		return "Lotto [number=" + number + ", count=" + count + "]";
	}

}
