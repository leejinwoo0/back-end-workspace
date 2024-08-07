package com.kh.project.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public class QuestionTable {
	private int questionCode;
	private String title;
	private String qna;
	private String memInfo;
}
