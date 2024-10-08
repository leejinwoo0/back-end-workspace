package com.kh.pet.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public class Chat {

	private int chatCode;
	private String title;
	private String text;
	private String answer;
	private String id;
}
