package com.kh.project.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public class Goods {
	private int GoodsCode;
	private String localGoods;
	private String specialGoods;
	private String pmtAmt;
}
