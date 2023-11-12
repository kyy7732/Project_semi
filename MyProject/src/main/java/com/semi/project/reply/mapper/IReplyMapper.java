package com.semi.project.reply.mapper;

import java.util.List;

import com.semi.project.reply.dto.UserReplyModifyRequestDTO;
import com.semi.project.reply.entity.Reply;
import com.semi.project.util.page.Page;

public interface IReplyMapper {
	
	// 댓글 등록
	void regist(Reply reply);
	
	
}
