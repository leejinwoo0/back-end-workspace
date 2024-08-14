package com.kh.project.model.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor@Builder
public class StadiumRes {
	private int stadiumResCode;
    private String startDate;
    private String endDate;
    private int price;
    private int stadiumCode;
    private int memCode;
    private int pmtAmtCode;
    private String id;
	private String password;
}
