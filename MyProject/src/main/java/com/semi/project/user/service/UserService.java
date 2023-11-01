package com.semi.project.user.service;

import java.util.List;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.semi.project.festival.dto.FtvResponseDTO;
import com.semi.project.festival.dto.ReplyResponseDTO;
import com.semi.project.user.dto.RequestDTO;
import com.semi.project.user.entity.User;
import com.semi.project.user.mapper.IUserMapper;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class UserService {

	private final IUserMapper mapper;
	private final BCryptPasswordEncoder encoder;

	public int idCheck(String account) {
		return mapper.idCheck(account);
	}
	
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
	
	public void login(RequestDTO dto) {
		
		// dto-> entity 변환
	}
	
	public String login(String userId, String userPw) {
		String dbPw = mapper.login(userId);
		if(dbPw != null) {
			if(encoder.matches(userPw, dbPw)) {
				return userId;
			}
		}
		return null;
	}
	
	public ReplyResponseDTO getInfo(String id) {
		User user = mapper.getInfo(id);
		return ReplyResponseDTO.toDTO(user);	
	}
	
}
