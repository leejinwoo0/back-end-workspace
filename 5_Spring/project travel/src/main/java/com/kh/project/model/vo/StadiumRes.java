package com.kh.project.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public class StadiumRes {
	private int stadiumResCode;
    private String startDate;
    private String endDate;
    private int price;
    private int stadiumCode;
    private int memCode;
    private int pmtAmtCode;
}
