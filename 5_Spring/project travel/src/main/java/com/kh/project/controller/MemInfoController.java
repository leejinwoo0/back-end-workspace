package com.kh.project.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.project.config.TokenProvider;
import com.kh.project.model.vo.MemInfo;
import com.kh.project.service.MemInfoService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class MemInfoController {
	
	@Autowired
	private MemInfoService service;
	
	@Autowired
	private TokenProvider tokenProvider;
	
	@PostMapping("/register")
	public String register(MemInfo vo) {
		service.register(vo);
		return "redirect:/";
	}
	
	
	@ResponseBody
	   @PostMapping("/login")
	public String login (MemInfo vo) {
		MemInfo memInfo = service.login(vo);
		if(memInfo!=null) {
			
			String token = tokenProvider.create(memInfo);
			return token;
		}
		
		return null;
	}

}
