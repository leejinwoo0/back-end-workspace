package com.jpa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jpa.domain.Movie;
import com.jpa.repo.MovieDAO;

@Service
public class MovieService {
	
	@Autowired
	private MovieDAO dao;
	
	// 추가하기
	public void change(Movie vo) {
		dao.save(vo); // id가 없으면 추가/ 있으면 수정
	}
	//전체보기
	public List<Movie> viewAll(){
		return dao.findAll();
	}
	// 한개보기
	public Movie view(int id) {
		return dao.findById(id).orElse(null); // .get 또는 .or Else (null)도 가능	
	}
	
	// 삭제하기
	public void delete(int id) {
		dao.deleteById(id);
	}
}
