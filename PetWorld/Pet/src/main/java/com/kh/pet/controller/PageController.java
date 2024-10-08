package com.kh.pet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class PageController {
	
	// 동적 경로 매핑 (예: /page/rest, /page/accom, /page/goods)
	@GetMapping("/page/{pageName}")
	public String manyPage(@PathVariable String pageName) {
		return pageName; // /WEB-INF/views/{pageName}.jsp
	}
	// 예를들면 /page/rest  -> rest.jsp
	
	
	
	
	// 메인 페이지
	
	// 회원가입 페이지
	
	// 로그인 페이지
	
	// 마이 페이지
	
	// 회원정보수정 페이지
	
	// 상담문의 페이지
	
	// 리뷰 페이지
	
    // 리뷰작성 페이지
	
	// 돌봄 서비스사소개 페이지
	
	// 펫케어 예약페이지

	// 자주받는 질문 페이지
	
	// 서비스 종류 페이지
	

}
