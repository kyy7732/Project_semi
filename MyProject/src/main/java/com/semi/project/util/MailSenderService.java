package com.semi.project.util;

import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

import lombok.RequiredArgsConstructor;

@Component // 빈 등록 아노테이션
@RequiredArgsConstructor // 주입
public class MailSenderService {
	
	private final JavaMailSender mailSender;
	
	// 난수 발생
	private int makeRandemNumber() {
		Random r = new Random();
		int checkNum = r.nextInt(888888) + 111111;
		System.out.println("인증번호: " + checkNum);
		return checkNum;
	}
	
	public String joinEmail(String email) {
		int authNum = makeRandemNumber();
		
		String setFrom = "kyy77321@naver.com";
		String toMail = email;
		String title = "전국축제알리미 회원 가입 인증 이메일 입니다.";
		String content = "전국축제알리미 가입을 신청해 주셔서 감사합니다." + 
											"<br><br>" +
											"인증 번호는 <strong>" + authNum + "</strong> 입니다." + 
											"<br>" +
											"해당 인증 "
											+ "해당 인증 번호를 인증번호 확인란에 기입해 주세요.";
		
		mailSend(setFrom, toMail, title, content);
		
		return Integer.toString(authNum);
	}

	private void mailSend(String setFrom, String toMail, String title, String content) {
		MimeMessage message = mailSender.createMimeMessage();
		try {
			MimeMessageHelper helper = new MimeMessageHelper(message, false, "utf-8");
			helper.setFrom(setFrom);
			helper.setTo(toMail);
			helper.setSubject(title);
			helper.setText(content, true);
			mailSender.send(message);
			
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
		
	}
}







































