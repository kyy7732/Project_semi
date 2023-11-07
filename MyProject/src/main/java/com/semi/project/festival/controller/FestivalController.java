package com.semi.project.festival.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
//	@GetMapping("/ftvList/{season}")
//	@ResponseBody
//	public List<FtvResponseDTO> getFtvList(@PathVariable String season){
//		log.info("/festival/ftvList 요청: GET!  {}", season);
//		service.getFestivalBySeason(season);
//		//       return service.getFtvList(season);
//		return null;
//	}




}












