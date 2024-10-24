package com.kh.pet.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @AllArgsConstructor @NoArgsConstructor 
public class Reservation {
	
	private int resCode;
	private String petsitter;
	private int petNum;
	private int careTime;
	private boolean bathService;
	private boolean walkService;
	private boolean pickupService;
	private String id;
	private int petsitterCode;

}
