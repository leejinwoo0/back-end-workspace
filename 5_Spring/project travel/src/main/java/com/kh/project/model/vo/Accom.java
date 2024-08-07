package com.kh.project.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public class Accom {
	private int accomCode;
	private String phone;
	private String location;
	private int price;
	private String nameOfAccom;
	private boolean breakfast;
	private String accomClass;
}
