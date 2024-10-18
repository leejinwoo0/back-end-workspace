package com.kh.pet.controller;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.kh.pet.model.vo.Member;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class PageController {
	
	
	// 회원가입 페이지
	@GetMapping("/signUp")
	public String signUp() {
		return "signUp";
	}
	// 로그인 페이지
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	// 마이 페이지
	@GetMapping("/mypage")
	public String mypage(HttpServletRequest request) {
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		Member member = (Member) authentication.getPrincipal();
    	String role = member.getRole();
		
		if(role.equals("ROLE_PETSITTER")) {
			return "sitterpage";
		}else if(role.equals("ROLE_MEMBER")) {
			return "mypage";
		}
		return "adminpage";
	}
	
	// 회원정보수정 페이지
	@GetMapping("/update")
	public String update() {
		return "update";
	}
	
	// 회원탈퇴 페이지
	@GetMapping("/delete")
	public String delete() {
		return "delete";
	}
	// 펫월드 사이트 홍보 페이지
	@GetMapping("/petworld")
	public String petworld() {
		return "petworld";
	}

	// 자주받는 질문 페이지
	@GetMapping("/FAQ")
	public String FAQ() {
		return "FAQ";
	}
	// 서비스 종류 페이지
	@GetMapping("/service")
	public String service() {
		return "service";
	}

	// 리뷰
	@GetMapping("/review")
	public String review() {
		return "review";
	}
	// 상담 게시판
	@GetMapping("/chat")
	public String chat() {
		return "chat";
	}
	// 예약
	@GetMapping("/reservation")
	public String reservation() {
		return "reservation";
	}
	
	//
}
