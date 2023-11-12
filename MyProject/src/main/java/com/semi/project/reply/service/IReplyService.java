package com.semi.project.reply.service;

import java.util.List;
import java.util.Map;

import com.semi.project.reply.dto.UserReplyModifyRequestDTO;
import com.semi.project.reply.dto.UserReplyRequestDTO;
import com.semi.project.reply.dto.UserReplyResponseDTO;
import com.semi.project.util.page.Page;

public interface IReplyService {
	
	// 댓글 등록
	void regist(UserReplyRequestDTO dto);
	
	
}
