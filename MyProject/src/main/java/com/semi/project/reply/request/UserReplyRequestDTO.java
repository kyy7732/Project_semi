package com.semi.project.reply.request;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter
@ToString @EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
public class UserReplyRequestDTO {
	
	private int commentNum;
	private String userId;
	private String content;
	private String regDate;
	
	
	
	
	static String makePrettierDateString(LocalDateTime regDate) { //DTO 패키지 안에서만 사용가능하게 default값으로
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
		return dtf.format(regDate);
	}	
	
}



