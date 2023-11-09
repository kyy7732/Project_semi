package com.semi.project.reply.service;

import java.util.List;

import com.semi.project.reply.request.UserReplyModifyRequestDTO;
import com.semi.project.reply.request.UserReplyRequestDTO;
import com.semi.project.reply.response.ReplyDetailDTO;
import com.semi.project.reply.response.UserReplyResponseDTO;
import com.semi.project.util.page.Page;

public interface IReplyService {
	
	// 댓글 등록
	void regist(UserReplyRequestDTO dto);
	
	// 댓글 목록
	List<UserReplyResponseDTO> getList(Page page);
	
	// 총 댓글 개수
	int getTotal(Page page);
	
	// 상세 보기
	ReplyDetailDTO getContent(int commentNum);
	
	// 수정
	void update(UserReplyModifyRequestDTO dto);
	
	// 삭제
	void delete(int commentNum);
	
}
