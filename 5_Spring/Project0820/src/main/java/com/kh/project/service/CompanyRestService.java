package com.kh.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.model.vo.CompanyRest;

import mapper.CompanyRestMapper;

@Service
public class CompanyRestService {
	
	@Autowired
	private CompanyRestMapper companyrestMapper;
	
	public boolean check(String id) {
		CompanyRest vo = companyrestMapper.check(id);
		return vo!= null;
	}

	public CompanyRest login(CompanyRest vo) {
		return companyrestMapper.login(vo);
	}
	
	public boolean signUp(CompanyRest vo) {
		try {
			int result = companyrestMapper.signUp(vo);
			return result == 1;
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean update(CompanyRest vo) {
		try {
			int result = companyrestMapper.update(vo);
			return result > 0;
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public void delete(int no) {
		companyrestMapper.delete(no);
	}
}


