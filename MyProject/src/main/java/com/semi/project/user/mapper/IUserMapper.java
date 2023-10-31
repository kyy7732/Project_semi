package com.semi.project.user.mapper;

import com.semi.project.user.entity.User;

public interface IUserMapper {


	//회원가입
	
	
	//로그인
	
	
	//회원정보수정
	void updateUser(User user);
	
	// 회원 정보 얻어오기
	User getInfo(String id);

	// 아이디 중복 확인
	int idCheck(String account);
	
	//로그아웃
	
	//회원탈퇴
	
	//
	
}
