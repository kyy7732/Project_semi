package com.semi.project.reply.service;

import java.util.List;

import com.semi.project.reply.dto.Page;
import com.semi.project.reply.request.userReplyModifyRequestDTO;
import com.semi.project.reply.request.userReplyRequestDTO;
import com.semi.project.reply.response.ReplyDetailDTO;
import com.semi.project.reply.response.userReplyResponseDTO;

public interface IReplyService {
	
	// 댓글 등록
	void regist(userReplyRequestDTO dto);
	
	// 댓글 목록
	List<userReplyResponseDTO> getList(Page page);
	
	// 총 댓글 개수
	int getTotal(Page page);
	
	// 상세 보기
	ReplyDetailDTO getContent(int commentNum);
	
	// 수정
	void update(userReplyModifyRequestDTO dto);
	
	// 삭제
	void delete(int commentNum);
	
}
