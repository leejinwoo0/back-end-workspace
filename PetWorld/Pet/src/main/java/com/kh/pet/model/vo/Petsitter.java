package com.kh.pet.model.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Petsitter {
	
	private int petsitterCode;
	private String petsitterGrade;
	private String petsitterName;
	private String petsitterPhone;
	private String petsitterAddress;
	private String petsitterPrice;

}
