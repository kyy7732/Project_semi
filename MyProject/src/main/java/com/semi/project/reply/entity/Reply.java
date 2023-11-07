package com.semi.project.reply.entity;
/*
CREATE TABLE reply
(
	comment_num number NOT NULL,
	content varchar2(500) NOT NULL,
	reg_date date DEFAULT SYSDATE NOT NULL,
	user_id varchar2(50) NOT NULL,
	ftv_num number NOT NULL,
	PRIMARY KEY (comment_num)
);
*/

import java.time.LocalDateTime;

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
public class Reply {

	private int commentNum;
	private String content;
	private LocalDateTime regDate;
	private String userId;
	private int ftvNum;
	private LocalDateTime updateDate;
	
	
}
