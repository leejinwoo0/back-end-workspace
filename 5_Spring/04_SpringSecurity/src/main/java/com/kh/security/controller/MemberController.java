package com.kh.security.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.kh.security.config.TokenProvider;
import com.kh.security.model.vo.Member;
import com.kh.security.service.MemberService;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService service;
	
	@Autowired
	private TokenProvider tokenProvider;
	
	@PostMapping("/register")
	public String register(Member vo) {
		
		service.register(vo);
		
		return "redirect:/";
	}

	@PostMapping("/login")
	public void login(Member vo) {
		Member member = service.login(vo);
		if(member!=null) {
			//로그인 성공! null 이 아닐때 -> 세션에 값을 담기 (서버에 고객정보 임시저장)
			//     -> 토큰 생성해서 부여 (서버는 통큰 생성만, 가지고 있는 건 클라이언트)
			
			String token = tokenProvider.create(member);
			System.out.println(token);
		}
	}
}
