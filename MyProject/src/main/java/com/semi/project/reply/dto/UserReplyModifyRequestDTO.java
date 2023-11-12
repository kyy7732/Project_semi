package com.semi.project.reply.dto;

import com.semi.project.reply.entity.Reply;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
public class UserReplyModifyRequestDTO {
	
	private String userId;
	private String content;
	private int ftvNum;
	
	public Reply toentity(UserReplyModifyRequestDTO dto) {
		return Reply.builder()
					.userId(dto.userId)
					.content(dto.content)
					.ftvNum(dto.ftvNum)
					.build();
					
	
	}
	
}
