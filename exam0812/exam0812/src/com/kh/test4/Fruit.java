package com.kh.test4;

public class Fruit {

	private String Fruit;
	private String color;
	public Fruit(String fruit, String color) {
		super();
		Fruit = fruit;
		this.color = color;
	}
	public String getFruit() {
		return Fruit;
	}
	public void setFruit(String fruit) {
		Fruit = fruit;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	@Override
	public String toString() {
		return "Fruit [Fruit=" + Fruit + ", color=" + color + "]";
	}
	
	
}
