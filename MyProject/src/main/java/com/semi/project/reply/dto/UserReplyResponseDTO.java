package com.semi.project.reply.dto;

import java.time.LocalDateTime; 
import java.time.format.DateTimeFormatter;

import com.semi.project.reply.entity.Reply;

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
public class UserReplyResponseDTO {

	private int commentNum;
	private String content;
	private String userId;
	private String regDate;
	
	public UserReplyResponseDTO(Reply reply) {
		super();
		this.userId = reply.getUserId();
		this.commentNum = reply.getCommentNum();
		this.content = reply.getContent();
		this.regDate = makePrettierDateString(reply.getRegDate());
	}
	
	static String makePrettierDateString(LocalDateTime regDate) { //DTO 패키지 안에서만 사용가능하게 default값으로
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
		return dtf.format(regDate);
	}
	
}
