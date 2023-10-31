package com.semi.project.user.mapper;

import static org.junit.jupiter.api.Assertions.assertEquals;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import com.semi.project.user.entity.User;

@ExtendWith(SpringExtension.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/db-config.xml")
public class UserMapperTest {

	@Autowired
	private IUserMapper mapper;
	
	@Test
	@DisplayName("회원 정보 수정을 진행했을 때 변경이 완료되어야 한다.")
	void updateTest() {
		User user = User.builder()
					.userId("kim1234")
					.userPw("aaa1111")
					.name("김춘식")
					.email("kyy")
					.build();
		mapper.updateUser(user);
		
		assertEquals("김춘식" , mapper.getInfo("kim1234"));
		
	}
}






















