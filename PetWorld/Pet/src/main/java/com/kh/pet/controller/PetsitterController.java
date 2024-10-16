package com.kh.pet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.pet.model.vo.Petsitter;
import com.kh.pet.service.PetsitterService;

@Controller
@RequestMapping("/petsitter")
public class PetsitterController {

	@Autowired
	private PetsitterService petsitterService;
	
	
	// 돌봄서비스사 목록 추가
	@GetMapping("/insert")
	public String insertPetsitter(Petsitter petsitter) {
		petsitterService.insertPetsitter(petsitter);
		return "redirect:/petsitter/list";
	}
	
	// 돌봄서비스사 목록 조회
	@GetMapping("/list")
	public String getAllPetsitter(Model model) {
		List<Petsitter> petsitterList = petsitterService.getAllPesitter();
		model.addAttribute("petsitterList", petsitterList);
		return "petsitter/list";
	}
	
	// 돌봄서비스사 목록 수정

	
	
	// 돌봄 서비스사 목록 수정 페이지 이동
	
	
	// 돌봄 서비스사 목록 수정처리
	
	
	// 돌범서비스사 목록 삭제 
}


