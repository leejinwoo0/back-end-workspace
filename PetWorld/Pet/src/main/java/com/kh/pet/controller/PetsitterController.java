package com.kh.pet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.pet.model.vo.Petsitter;
import com.kh.pet.service.PetsitterService;

@Controller
public class PetsitterController {
	
	@Autowired
	private PetsitterService petsitterService;
	
	// 펫시터 목록 조회
	@GetMapping("/petsitter/list")
	public String getPetsitterList(Model model) {
		System.out.println("getPetsitterList 호출됨");
		List<Petsitter> petsitters = petsitterService.getPetsitterList();
		model.addAttribute("petsitters", petsitters);
		return "petsitter";
	}

}
