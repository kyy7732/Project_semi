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

@Getter @Setter
@ToString @EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UserReplyRequestDTO {
	
	private String userId;
	private String content;
	private int ftvNum;
	
	public Reply toentity(UserReplyRequestDTO dto) {
		return Reply.builder()
					.userId(userId)
					.content(content)
					.ftvNum(ftvNum)
					.build();
					
	
	}	
}



