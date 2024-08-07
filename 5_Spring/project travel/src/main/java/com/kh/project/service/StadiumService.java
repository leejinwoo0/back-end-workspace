package com.kh.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.project.model.vo.Stadium;

import mapper.StadiumMapper;

@Service
public class StadiumService {
	@Autowired
	  private StadiumMapper stadiumMapper;

    public List<Stadium> findAll() {
        return stadiumMapper.findAll();
    }

    public Stadium findById(Integer id) {
        return stadiumMapper.findById(id);
    }

    public void save(Stadium stadium) {
        stadiumMapper.save(stadium);
    }

    public void update(Stadium stadium) {
        stadiumMapper.update(stadium);
    }

    public void deleteById(Integer id) {
        stadiumMapper.deleteById(id);
    }
}
