package com.semi.project.user.dto;

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
public class ResponseDTO {

	private String userId;
	private String name;
	private String email;
	private String useremail;
	private String emailDomain;
	

	public static ResponseDTO dto(User user) {
		
		String email =user.getEmail();
		int email1 = email.indexOf("@");
		
		if(email1 != -1) {
			String useremail = email.substring(0, email1);
			String emailDomain = email.substring(email1+1);
		
			return ResponseDTO.builder()
						.userId(user.getUserId())
		                .name(user.getName())
		                .email(user.getEmail())
		                .useremail(useremail)
		                .emailDomain(emailDomain)
		                .build();
		}else {
			return null;
		}
			
		
	 
	}
}
