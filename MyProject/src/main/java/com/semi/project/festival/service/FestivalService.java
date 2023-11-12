package com.semi.project.festival.service;

import java.util.ArrayList;
import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;

import com.semi.project.festival.dto.FtvResponseDTO;
import com.semi.project.festival.entity.Festival;
import com.semi.project.festival.entity.Festival;
import com.semi.project.festival.mapper.IFestivalMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
@PropertySource("classpath:/properties/FestivalApi.properties")
public class FestivalService {
	//필드
	private final IFestivalMapper mapper;

	// 시즌별 축제 데이터 메서드
	public List<FtvResponseDTO> getFestivalBySeason(String season) {
		List<Festival> ftvList = mapper.getFestival(season); // 받기

		List<FtvResponseDTO> dtoList = new ArrayList<>();

		for(Festival ftv : ftvList) {
			dtoList.add(new FtvResponseDTO(ftv));
		}

		return dtoList;

	}
	
	//행정구역 클릭시 요청 데이터 메서드
	public List<FtvResponseDTO> getFestivalByArea(String name) {
		List<Festival> ftvList = mapper.getFestivalByArea(name); // 받기

		List<FtvResponseDTO> dtoList = new ArrayList<>();

		for(Festival ftv : ftvList) {
			dtoList.add(new FtvResponseDTO(ftv));
		}

		return dtoList;
	}

	// 검색창에 축제명 입력시 데이터 메서드
	public List<FtvResponseDTO> getFestivalByName(String ftvName){
		List<Festival> ftvList = mapper.getFestivalName(ftvName);
		
		List<FtvResponseDTO> dtoList = new ArrayList<>();
		
		for(Festival ftv : ftvList) {
			dtoList.add(new FtvResponseDTO(ftv));
		}
		
		return dtoList;
	}// 메서드의 끝
	
	// 실시간 인기축제 창에 랜덤 데이터 메서드
	public List<FtvResponseDTO> getftvNameList2(String ftvname){
		List<Festival> ftvList = mapper.getFestivalName(ftvname);
		
		List<FtvResponseDTO> dtoList = new ArrayList<>();
		
		for(Festival ftv : ftvList) {
			dtoList.add(new FtvResponseDTO(ftv));
			log.info("ftv 값 불러오기", ftv);
		}
		
		return dtoList;
	}

}
