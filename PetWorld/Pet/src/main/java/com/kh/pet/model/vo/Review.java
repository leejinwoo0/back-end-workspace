package com.kh.pet.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @AllArgsConstructor @NoArgsConstructor @Builder
public class Review {
	
	private int reviewCode;
	private String title;
	private String reviewText;
	private String reviewDate;
	private String id;

}


