package com.semi.project.reply.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.semi.project.reply.entity.Reply;
import com.semi.project.reply.mapper.IReplyMapper;
import com.semi.project.reply.request.UserReplyModifyRequestDTO;
import com.semi.project.reply.request.UserReplyRequestDTO;
import com.semi.project.reply.response.ReplyDetailDTO;
import com.semi.project.reply.response.UserReplyResponseDTO;
import com.semi.project.util.page.Page;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ReplyService implements IReplyService {

	private final IReplyMapper mapper;
	
	
	@Override
	public void regist(UserReplyRequestDTO dto) {
		mapper.regist(Reply.builder()
				.commentNum(dto.getCommentNum())
				.content(dto.getContent())
				.userId(dto.getUserId())
				.build());
	}

	@Override
	public List<UserReplyResponseDTO> getList(Page page) {
		List<UserReplyResponseDTO> dtoList = new ArrayList<>();
		List<Reply> list = mapper.getList(page);
		for(Reply re : list) {
			dtoList.add(new UserReplyResponseDTO(re));
		}
		return dtoList;
	}

	@Override
	public int getTotal(Page page) {
		return mapper.getTotal(page);
	}


	@Override
	public void update(UserReplyModifyRequestDTO dto) {
		mapper.update(Reply.builder()
							.commentNum(dto.getCommentNum())
							.content(dto.getContent())
							.userId(dto.getUserId())
							.build());
		
	}

	@Override
	public void delete(int commentNum) {
		mapper.delete(commentNum);
	}

}

























