package com.kh.project.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import com.kh.project.model.vo.Stadium;
import com.kh.project.service.StadiumService;


@Controller
@RequestMapping("/stadiums")
public class StadiumController {
    @Autowired
    private StadiumService stadiumService;

    @GetMapping
    public List<Stadium> findAll() {
        return stadiumService.findAll();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Stadium> findById(@PathVariable Integer id) {
        Stadium stadium = stadiumService.findById(id);
        if (stadium != null) {
            return ResponseEntity.ok(stadium);
        } else {
            return ResponseEntity.notFound().build();
        }
    }

    @PostMapping
    public void save(@RequestBody Stadium stadium) {
        stadiumService.save(stadium);
    }

    @PutMapping("/{id}")
    public void update(@PathVariable Integer id, @RequestBody Stadium stadium) {
        stadium.setStadiumCode(id);
        stadiumService.update(stadium);
    }

    @DeleteMapping("/{id}")
    public void deleteById(@PathVariable Integer id) {
        stadiumService.deleteById(id);
    }
}