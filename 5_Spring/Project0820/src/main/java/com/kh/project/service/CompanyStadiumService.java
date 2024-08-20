package com.kh.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.model.vo.CompanyStadium;

import mapper.CompanyStadiumMapper;

@Service
public class CompanyStadiumService {
	
	@Autowired
	private CompanyStadiumMapper companystadiumMapper;
	
	public boolean check(String id) {
		CompanyStadium vo = companystadiumMapper.check(id);
		return vo!=null;
	}

	public CompanyStadium login(CompanyStadium vo) {
		return companystadiumMapper.login(vo);
	}
	
	public boolean signUp(CompanyStadium vo) {
		try {
			int result = companystadiumMapper.signUp(vo);
			return result == 1;
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean update(CompanyStadium vo) {
		try {
			int result = companystadiumMapper.update(vo);
			return result > 0;
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public void delete(int no) {
		companystadiumMapper.delete(no);
	}
}
