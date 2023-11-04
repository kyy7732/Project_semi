package com.semi.project.user.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.semi.project.festival.dto.FtvResponseDTO;
import com.semi.project.festival.dto.ReplyResponseDTO;
import com.semi.project.user.mapper.IUserMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class UserService {

	private final IUserMapper mapper;

	public void regist() {
		// TODO Auto-generated method stub
		
	}

	public List<FtvResponseDTO> getLikeList(String userId) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<ReplyResponseDTO> getReplyList(Object attribute) {
		return null;
	}

	// 아이디 중복 확인
	public int idCheck(String userId) {
		return mapper.idCheck(userId);
	}
	
	//로그인 
	public String login(String userId, String userPw) {
		String pw = mapper.login(userPw);
		if(pw.matches(userPw)) {
			return userId;
		}
		
		return null;
	}	
}
