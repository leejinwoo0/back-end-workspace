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
	
	// 돌봄서비스사 목록 조회
	public List<Petsitter> getAllPesitter() {
	 return petsitterMapper.selectAllPetsitter();
	}
	
	// 돌봄서비스사 목록 수정
	public void updatePetsitter(Petsitter petsitter) {
		petsitterMapper.updatePetsitter(petsitter);
	}
	
	// 돌봄서비스사 목록 삭제
	public void deletePetsitter(int petsitterCode) {
		petsitterMapper.deletePetsitter(petsitterCode);
	}
	
}
