package com.semi.youtube.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.semi.youtube.mode.vo.Member;
import com.semi.youtube.mode.vo.VideoLike;
import com.semi.youtube.service.VideoService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class VideoController {
	
	@Autowired
	private VideoService video;
	
	
	// 좋아요
	@ResponseBody
	@PostMapping("/like")
	public void like(HttpServletRequest request, int code) {
		HttpSession session = request.getSession();
		Member member = (Member) session.getAttribute("vo");
		
		VideoLike data = VideoLike.builder()
				.id(member.getId())
				.videoCode(code)
				.build();
		
		video.like(data);
	}
	
	
   // 좋아요 취소
	@ResponseBody
	@PostMapping("/unlike")
	public void unlike(int code) {
		video.unlike(code);
	}
	
	
	
	
	// 비디오 전체 목록 보기
	
	// 비디오 1개 보여주기
	
	// 댓글 작성
	
	// 댓글 수정
	
	// 댓글 삭제
	
	// 구독
	
	// 구독 취소
	
	

}
