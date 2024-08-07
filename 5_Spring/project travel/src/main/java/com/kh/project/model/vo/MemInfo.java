package com.kh.project.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public class MemInfo {
	private int memInfoCode;
	private String id;
	private String password;
	private String name;
	private String phone;
}
