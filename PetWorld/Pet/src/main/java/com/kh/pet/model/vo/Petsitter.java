package com.kh.pet.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @AllArgsConstructor @NoArgsConstructor
public class Petsitter {

	private int petsitterCode;
	private int petsitterClass;
	private String phone;
	private int price;
	
}
