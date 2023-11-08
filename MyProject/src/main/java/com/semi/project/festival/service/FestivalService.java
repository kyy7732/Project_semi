package com.semi.project.festival.service;

import java.util.List;

import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Service;

import com.semi.project.festival.dto.FtvResponseDTO;
import com.semi.project.festival.mapper.IFestivalMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;


 @Service
 @RequiredArgsConstructor
 @Slf4j
 @PropertySource("classpath:/properties/FestivalApi.properties")
 public class FestivalService {
 	private final IFestivalMapper mapper;

    public List<FtvResponseDTO> getFestivalBySeason(String season) {
        return null;
    }


  }
