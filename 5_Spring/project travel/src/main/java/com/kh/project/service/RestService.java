package com.kh.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.model.vo.Rest;

import mapper.RestMapper;

@Service
public class RestService {
	@Autowired
	private RestMapper restMapper;

    public List<Rest> findAll() {
        return restMapper.findAll();
    }

    public Rest findById(Integer id) {
        return restMapper.findById(id);
    }

    public void save(Rest rest) {
        restMapper.save(rest);
    }

    public void update(Rest rest) {
        restMapper.update(rest);
    }

    public void deleteById(Integer id) {
        restMapper.deleteById(id);
    }
}
