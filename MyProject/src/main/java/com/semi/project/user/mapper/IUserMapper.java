package com.semi.project.user.mapper;

import com.semi.project.user.entity.User;

public interface IUserMapper {



	//아이디 중복 확인
	int idCheck(String userId);
	
	//회원 가입
	void join(User user);
	
	//로그인
	//id를 통해 pw를 조회하는 메서드
	String login(String id);	

	
	//회원정보수정
	void updateUser(User user);
	
	// 회원 정보 얻어오기
	User getInfo(String id);

	//이메일 중복 확인
	
	//로그아웃
	
	//회원탈퇴

	

	
}
