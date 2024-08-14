package com.kh.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.kh.project.model.vo.MemInfo;

import mapper.MemInfoMapper;

@Service
public class MemInfoService {
	
	@Autowired
	private MemInfoMapper mapper;
	
	private BCryptPasswordEncoder bcpe = new BCryptPasswordEncoder();
	
	public void register(MemInfo vo) {
		vo.setPassword(bcpe.encode(vo.getPassword()));
		vo.setRole("ROLE_ADMIN");
		
		mapper.register(vo);
	}
	
	public MemInfo login(MemInfo vo) {
		MemInfo memInfo = mapper.login(vo.getId());
		
		if(memInfo!=null && bcpe.matches(vo.getPassword(), memInfo.getPassword())) {
			return memInfo;
		}
		
		return null;
	}
}
