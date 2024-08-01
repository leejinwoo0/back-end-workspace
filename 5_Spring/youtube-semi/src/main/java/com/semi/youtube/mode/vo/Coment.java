package com.semi.youtube.mode.vo;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public class Coment {

	private int commentCode;
	private String commentText;
	private Date commentDate;
	private String id;
	private int videoCode;
	private int parentCode;
}
