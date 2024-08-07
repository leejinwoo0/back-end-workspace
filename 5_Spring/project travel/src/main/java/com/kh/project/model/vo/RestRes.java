package com.kh.project.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public class RestRes {
	private int reservationCode;
	private String date;
	private String time;
	private int people;
	private int amount;
	private int pmtAmtCode;
	private int restCode;
	private int memCode;
}
