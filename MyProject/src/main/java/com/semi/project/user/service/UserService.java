package com.semi.project.user.service;

import java.util.List;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.semi.project.festival.dto.FtvResponseDTO;
import com.semi.project.festival.dto.ReplyResponseDTO;
import com.semi.project.user.entity.User;
import com.semi.project.user.mapper.IUserMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
public class UserService {

	private final IUserMapper mapper;
	private final BCryptPasswordEncoder encoder;

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
	

	public void join(User user) {
		log.info("암호화 하기 전 비번: ", user.getUserPw());	
		
		String securePw = encoder.encode(user.getUserPw());
		log.info("암호화 후 비번: ", securePw);
		user.setUserPw(securePw);
		
		mapper.join(User.builder()
						.userId(user.getUserId())
						.userPw(user.getUserPw())
						.email(user.getEmail())
						.name(user.getName())
						.build());
	}

	
	public String login(String userId, String userPw) {
		String dbPw = mapper.login(userId);
		if(dbPw != null) {
			if(encoder.matches(userPw,  dbPw)) {
				return userId;
			}
		}
		return null;
	}
	
}












