package com.semi.project.festival.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.semi.project.festival.dto.FtvResponseDTO;
import com.semi.project.festival.dto.ReplyResponseDTO;
import com.semi.project.festival.mapper.IFestivalMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class FestivalService {

	private final IFestivalMapper mapper;

	public List<FtvResponseDTO> getFtvList(String season) {

		return null;
	}

	public List<ReplyResponseDTO> getReplyList(int ftvNum) {

		return null;
	}
}
