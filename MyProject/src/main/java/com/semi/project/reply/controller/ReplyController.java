package com.semi.project.reply.controller;

import java.util.List;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.semi.project.reply.dto.UserReplyModifyRequestDTO;
import com.semi.project.reply.dto.UserReplyRequestDTO;
import com.semi.project.reply.dto.UserReplyResponseDTO;
import com.semi.project.reply.service.ReplyService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/reply")
@RequiredArgsConstructor
@Slf4j
public class ReplyController {
	
	private final ReplyService service;
	
	// 댓글 등록 처리
	@PostMapping("/new")
	@ResponseBody
	public String regist(@RequestBody UserReplyRequestDTO dto) {
		log.info("댓글 등록 요청이 들어옴! {}", dto);
		service.regist(dto);
		return "regSuccess"; 
	}

		
	
}


















