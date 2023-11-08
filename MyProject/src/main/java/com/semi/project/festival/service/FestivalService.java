package com.semi.project.festival.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;

import com.semi.project.festival.dto.FtvResponseDTO;
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

    //메서드
    public List<FtvResponseDTO> getFestivalBySeason(String season) {
        List<Festival> ftvList = mapper.getFestival(season); // 받기

        List<FtvResponseDTO> dtoList = new ArrayList<>();

        for(Festival ftv : ftvList) {
            dtoList.add(new FtvResponseDTO(ftv));
        }

        return dtoList;

    }
  }

