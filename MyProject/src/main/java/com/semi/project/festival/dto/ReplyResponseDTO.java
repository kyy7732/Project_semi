package com.semi.project.festival.dto;

import com.semi.project.user.entity.User;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.EqualsAndHashCode;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter @Getter @ToString
@EqualsAndHashCode
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ReplyResponseDTO {
	
	private int ftvNum;

	public static ReplyResponseDTO toDTO(User user) {

		return null;
	}

}
