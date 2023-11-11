package com.semi.project.user.dto;

import com.semi.project.user.entity.FtvLike;

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
public class likeDTO {
	
	private String userId;
	private int ftvNum;

	public FtvLike toEntity(likeDTO dto) {
		return FtvLike.builder()
					.userId(this.userId)
					.ftvNum(this.ftvNum)
					.build();
	}
	
}
