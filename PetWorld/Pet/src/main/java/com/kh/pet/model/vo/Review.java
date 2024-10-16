package com.kh.pet.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @AllArgsConstructor @NoArgsConstructor
public class Review {
	
	private String title;
	private String text;
	private String photo;
	private Date date;
	private String id;
	private int reviewCode;

}


