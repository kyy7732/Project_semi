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
	
	
	@Override
	public void regist(UserReplyRequestDTO dto) {
		mapper.regist(Reply.builder()
				.commentNum(dto.getCommentNum())
				.userId(dto.getUserId())
				.content(dto.getContent())
			
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
	public int getTotal(int ftvNum) {
		return mapper.getTotal(ftvNum);
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

























