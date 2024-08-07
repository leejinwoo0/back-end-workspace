package com.kh.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.kh.project.service.StadiumService;

@Controller
public class StadiumController {
	
	@Autowired
	private StadiumService service;
	
	

}
