package com.semi.youtube.mode.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data @AllArgsConstructor @NoArgsConstructor
public class VideoLike {

	private int likeCode;
	private String idl; //member
	private int videoCode; // video
	
}
