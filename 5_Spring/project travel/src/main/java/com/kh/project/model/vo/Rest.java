package com.kh.project.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public class Rest {
	private int restCode;
    private String restName;
    private String restLocation;
    private String restPhone;
    private int avgPrice;
    private int restClassCode;
}
