package com.kh.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.model.vo.CompanyAccom;

import mapper.CompanyAccomMapper;

@Service
public class CompanyAccomService {
	
	@Autowired
	private CompanyAccomMapper companyaccomMapper;
	
	
	public boolean check(String id ) {
		CompanyAccom vo = companyaccomMapper.check(id);
		return vo !=null;
	}

	public CompanyAccom login(CompanyAccom vo) {
		return companyaccomMapper.login(vo);
	}
	
	public boolean signUp(CompanyAccom vo) {
		try {
			int result = companyaccomMapper.signUp(vo);
			return result == 1;
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public boolean update(CompanyAccom vo) {
		try {
			int result = companyaccomMapper.update(vo);
			return result > 0;
		}catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public void delete(int no) {
		companyaccomMapper.delete(no);
	}
}

