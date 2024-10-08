package com.kh.pet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapper.ChatMapper;

@Service
public class ChatService {
	
	@Autowired
	private ChatMapper mapper;

}
