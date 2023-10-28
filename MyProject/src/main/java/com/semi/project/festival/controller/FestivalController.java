package com.semi.project.festival.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/festival")
public class FestivalController {

	//시즌요청
	@GetMapping("/season")
	public ResponseEntity<?> getSeason(){
		
		return null;
	}
}
