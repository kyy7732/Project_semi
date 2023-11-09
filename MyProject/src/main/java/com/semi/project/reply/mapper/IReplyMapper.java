package com.semi.project.reply.mapper;

import java.util.List; 

import com.semi.project.reply.entity.Reply;
import com.semi.project.util.page.Page;

public interface IReplyMapper {
	
	// 댓글 등록
	void regist(Reply reply);
	
	// 댓글 목록
	List<Reply> getList(Page page);
	
	// 총 댓글 개수 구하기
	int getTotal(Page page);
	
	// 상세 보기
	Reply getContent(int bno);
	
	// 수정
	void update(Reply reply);
	
	// 삭제
	void delete(int bno);
	
}
