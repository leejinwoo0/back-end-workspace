package com.kh.project.service;

import org.springframework.beans.factory.annotation.Autowired;


import org.springframework.stereotype.Service;

import com.kh.project.model.vo.MemInfo;

import mapper.MemInfoMapper;

@Service
public class MemInfoService {
	
	@Autowired
	private MemInfoMapper mapper;
	
	public MemInfoService(MemInfoMapper memberMapper) {
		this.mapper = memberMapper;
	}
	
	public void register(MemInfo member) {
		mapper.register(member);
	}
	
	public MemInfo login(MemInfo member) {
		return mapper.login(member);
	}
	
	public void update(MemInfo member) {
		mapper.update(member);
	}
}
