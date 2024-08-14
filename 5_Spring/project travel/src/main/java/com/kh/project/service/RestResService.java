package com.kh.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.project.model.vo.RestRes;
import com.kh.security.model.vo.Member;

import mapper.RestResMapper;

@Service
public class RestResService {
	
	
	@Autowired
	private RestResMapper mapper;
	
	private BCryptPasswordEncoder bcpe = new BCryptPasswordEncoder();
	
	public void register(RestRes vo) {
		
		vo.setPassword(bcpe.encode(vo.getPassword()));
        vo.setRole("ROLE_ADMIN");
        
        mapper.register(vo);
		
	}
	
	public Member login(Member vo) {
		
		Member member = mapper.login(vo.getId());
		
		if(member!=null && bcpe.matches(vo.getPassword(),member.getPassword() )) {
			
			return member;
		}
		
		return null;
	}
	

	
}
