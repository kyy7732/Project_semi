package com.semi.project.festival.controller;

import org.springframework.stereotype.Controller;
<<<<<<< HEAD
=======
import org.springframework.web.bind.annotation.GetMapping;

import java.beans.Encoder;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
>>>>>>> c09930276bd89d173fe90deaf61791526fd6afbc
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.semi.project.festival.dto.FtvResponseDTO;
import com.semi.project.festival.service.FestivalService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/festival")
@RequiredArgsConstructor
@Slf4j
public class FestivalController {

	private final FestivalService service;

	//축제지도 화면 이동 요청
	@GetMapping("/")
	public void viewFestival() {

	}

	//시즌별 축제조회(비동기)
	@GetMapping("/ftvList/{season}")
	@ResponseBody
	public List<FtvResponseDTO> getFtvList(@PathVariable String season){
		log.info("/festival/ftvList 요청: GET!  {}", season);
		return service.getFestivalBySeason(season);
	}





}












