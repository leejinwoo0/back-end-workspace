package com.kh.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.model.vo.Accom;

import mapper.AccomMapper;

@Service
public class AccomService {

	@Autowired
	private AccomMapper accomMapper;
	
	public List<Accom>findAll(){
		return accomMapper.findAll();
	}
	
	public Accom findById(Integer id) {
		return accomMapper.findById(id);
	}
	
	public void save(Accom accom) {
		accomMapper.save(accom);
	}
	public void update(Accom accom) {
		accomMapper.update(accom);
	}
	
	public void deleteById(Integer id) {
		accomMapper.deleteById(id);
	}
}
