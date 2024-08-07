package com.kh.project.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @NoArgsConstructor @AllArgsConstructor
public class ThemePark {
	private int themeCode;
    private String location;
    private String themePhone;
    private String guide;
}
