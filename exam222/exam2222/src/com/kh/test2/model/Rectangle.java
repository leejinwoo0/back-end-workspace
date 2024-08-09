package com.kh.test2.model;

public class Rectangle {
	
	private int width;
	private int height;
	public Rectangle() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Rectangle(int width, int height) {
		super();
		this.width = width;
		this.height = height;
	}
	@Override
	public String toString() {
		return "Rectangle [width=" + width + ", height=" + height + "]";
	}
	public int getWidth() {
		return width;
	}
	public void setWidth(int width) {
		this.width = width;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
	

}

//1.
//public int width;
//public int height;
//
//위에 두절의 public 을 private 로 바꿔준다
//
//2.
//public Rectangle() {
//	super();
//	// TODO Auto-generated constructor stub
//@Override
//public String toString() {
//return "Rectangle [width=" + width + ", hright=" + hright + "]";	
//애초에 없었기 때문에 새로 생성
//


	
