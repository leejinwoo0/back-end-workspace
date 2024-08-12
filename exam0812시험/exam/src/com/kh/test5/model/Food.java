package com.kh.test5.model;

public class Food {
	
	private String nmae;
	private int kcal;
	public Food(String nmae, int kcal) {
		super();
		this.nmae = nmae;
		this.kcal = kcal;
	}
	public Food() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getNmae() {
		return nmae;
	}
	public void setNmae(String nmae) {
		this.nmae = nmae;
	}
	public int getKcal() {
		return kcal;
	}
	public void setKcal(int kcal) {
		this.kcal = kcal;
	}
	@Override
	public String toString() {
		return "Food [nmae=" + nmae + ", kcal=" + kcal + "]";
	}
	
	

}
