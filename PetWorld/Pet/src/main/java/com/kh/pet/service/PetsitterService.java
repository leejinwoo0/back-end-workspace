package com.kh.pet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.pet.model.vo.Petsitter;

import mapper.PetsitterMapper;

@Service
public class PetsitterService {
	
	@Autowired
	private PetsitterMapper petsitterMapper;
	
	// 펫시터 목록 조회
	
	public List<Petsitter> getPetsitterList(){
		return petsitterMapper.getPetsitterList();
	}

}
