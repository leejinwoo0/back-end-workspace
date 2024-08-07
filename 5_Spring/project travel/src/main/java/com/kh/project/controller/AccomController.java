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

import com.kh.project.model.vo.Accom;
import com.kh.project.service.AccomService;

@Controller
@RequestMapping("/accommodations")
public class AccomController {

	@Autowired
	private AccomService accomService;
	
	@GetMapping
	public List<Accom> findAll(){
		return accomService.findAll();
	}
	
	@GetMapping("/{id}")
	public ResponseEntity<Accom> findById(@PathVariable Integer id){
		Accom accom = accomService.findById(id);
		if(accom != null) {
			return ResponseEntity.ok(accom);
		} else {
			return ResponseEntity.notFound().build();
		}
	}
	
	@PostMapping
	public void save(@RequestBody Accom accom) {
		accomService.save(accom);
	}
	@PutMapping("/{id}")
    public void update(@PathVariable Integer id, @RequestBody Accom accom) {
        accom.setAccomCode(id);
        accomService.update(accom);
    }

    @DeleteMapping("/{id}")
    public void deleteById(@PathVariable Integer id) {
        accomService.deleteById(id);
    }
}
