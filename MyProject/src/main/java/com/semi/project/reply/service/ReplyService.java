package com.semi.project.reply.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import com.semi.project.reply.dto.Page;
import com.semi.project.reply.entity.Reply;
import com.semi.project.reply.mapper.IReplyMapper;
import com.semi.project.reply.request.userReplyModifyRequestDTO;
import com.semi.project.reply.request.userReplyRequestDTO;
import com.semi.project.reply.response.ReplyDetailDTO;
import com.semi.project.reply.response.userReplyResponseDTO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ReplyService implements IReplyService {

	private final IReplyMapper mapper;
	
	@Override
	public void regist(userReplyRequestDTO dto) {
		mapper.regist(Reply.builder()
				.commentNum(0)
				.content("나 돌아갈래~!~~!")
				.userId("김춘식")
				.build());
	}

	@Override
	public List<userReplyResponseDTO> getList(Page page) {
		List<userReplyResponseDTO> dtoList = new ArrayList<>();
		List<Reply> list = mapper.getList(page);
		for(Reply re : list) {
			dtoList.add(new userReplyResponseDTO(re));
		}
		return dtoList;
	}

	@Override
	public int getTotal(Page page) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public ReplyDetailDTO getContent(int commentNum) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(userReplyModifyRequestDTO dto) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(int commentNum) {
		// TODO Auto-generated method stub

	}

}
