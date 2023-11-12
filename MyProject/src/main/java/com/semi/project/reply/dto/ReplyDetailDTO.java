package com.semi.project.reply.dto;

import com.semi.project.reply.entity.Reply;

import lombok.AllArgsConstructor;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Getter
@ToString @EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
public class ReplyDetailDTO {

	private int commentNum;
	private String userId;
	private String content;
	private String date;
	private int ftvNum;
	
	public ReplyDetailDTO(Reply reply) {
		super();
		this.commentNum = reply.getCommentNum();
		this.userId = reply.getUserId();
		this.content = reply.getContent();
		this.content = reply.getContent();
		if(reply.getUpdateDate() == null) {
			this.date = UserReplyResponseDTO.makePrettierDateString(reply.getRegDate());
		} else {
			this.date = UserReplyResponseDTO.makePrettierDateString(reply.getUpdateDate()) + " (수정됨)";
		}
	
	}
}
