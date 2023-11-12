package com.semi.project.reply.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.semi.project.reply.dto.UserReplyModifyRequestDTO;
import com.semi.project.reply.dto.UserReplyRequestDTO;
import com.semi.project.reply.dto.UserReplyResponseDTO;
import com.semi.project.reply.entity.Reply;
import com.semi.project.reply.mapper.IReplyMapper;
import com.semi.project.util.page.Page;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ReplyService implements IReplyService {

	private final IReplyMapper mapper;
	
	//댓글 등록
	@Override
	public void regist(UserReplyRequestDTO dto) {
		mapper.regist(Reply.builder()
				.content(dto.getContent())
				.userId(dto.getUserId())
				.ftvNum(dto.getFtvNum())
				.build());
	}



}

























