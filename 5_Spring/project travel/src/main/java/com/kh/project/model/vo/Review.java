package com.kh.project.model.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public class Review {
	private int reviewCode;
	private Date reviewDate;
	private String packageReview;
	private String memInfo;
	private String pmtAmt;
}
