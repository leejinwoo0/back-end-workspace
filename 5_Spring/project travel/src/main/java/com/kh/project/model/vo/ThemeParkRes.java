package com.kh.project.model.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor@Builder
public class ThemeParkRes {
	private int themeParkResCode;
	private int pmtAmtCode;
	private int themeCode;
	private int memCode;
	private String id;
	private String password;
}
