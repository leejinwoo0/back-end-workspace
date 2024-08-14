package com.kh.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;

import com.kh.project.service.RestResService;
import com.kh.security.config.TokenProvider;
import com.kh.security.model.vo.Member;

@Controller
public class RestResController {
	
	@Autowired
	private RestResService service;
	
	@Autowired
	private TokenProvider tokenProvider;
	
	@PostMapping("/register")
	public String register(Member vo) {
		service.register(vo);
		
		return"redirect:/";
		
	}

	@PostMapping("/login")
	public void login(Member vo) {
		Member member = service.login(vo);
		if(member!=null) {
			
		String token = tokenProvider.create(member);
		
			
		}
	}
}
