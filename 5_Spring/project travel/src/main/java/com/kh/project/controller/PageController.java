package com.kh.project.controller;


import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import com.kh.project.model.vo.MemInfo;




@Controller
public class PageController {

	
	@GetMapping("/")
	public String index() {
		return "index";
	}
	
	@GetMapping("/register")
	public String register() {
		return "register";
	}
	
	@GetMapping("/login")
	public String login(MemInfo vo) {
		return "login";
	}
	
	@GetMapping("/memInfo")
	public String memInfo() {
		return "memInfo";
	}
	
	@GetMapping("/admin")
	public String admin() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		
		if(authentication!=null & authentication.isAuthenticated()) {
			MemInfo memInfo = (MemInfo) authentication.getPrincipal();
			if(memInfo.getRole().equals("ROLE_ADMIN")) {
				return "admin";
			}
		}
		
		return "redirect:/";
	}
}
