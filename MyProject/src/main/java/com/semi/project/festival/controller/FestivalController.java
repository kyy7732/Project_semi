package com.semi.project.festival.controller;

import java.beans.Encoder;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.semi.project.festival.dto.FtvResponseDTO;
import com.semi.project.festival.dto.ReplyResponseDTO;
import com.semi.project.festival.service.FestivalService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/festival")
@RequiredArgsConstructor
@Slf4j
public class FestivalController {
	
	private final FestivalService service;
	
	//시즌별 축제조회(비동기)
	@GetMapping("/ftvList")
	@ResponseBody
	public List<FtvResponseDTO> getFtvList(String season){
		log.info("/festival/ftvList 요청: GET!  {}", season);
       return service.getFtvList(season);
	}

	

	
	
	

	}












