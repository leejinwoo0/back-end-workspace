package com.kh.project.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public class PmtAmt {
	private int pmtAmtCode;
	private String accom;
	private String meal;
	private String goods;
	private String ticket;
	private int sumPrice;
	private String memInfo;
}
