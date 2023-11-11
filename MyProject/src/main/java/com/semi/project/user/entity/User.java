package com.semi.project.user.entity;

import lombok.AllArgsConstructor; 
import lombok.Builder;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class User {

	private String userId;
	private String userPw;
	private String email;
	private String name;
	
	// 좋아요 개수 몇 개인지 알려주는 변수.
	private int likeCnt;

}


