package com.semi.project.user.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.semi.project.festival.dto.FtvResponseDTO;
import com.semi.project.festival.dto.ReplyResponseDTO;
import com.semi.project.user.dto.RequestDTO;
import com.semi.project.user.service.UserService;
import com.semi.project.util.MailSenderService;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/user")
@RequiredArgsConstructor
@Slf4j
public class UserController {

	private final UserService service;
	private final MailSenderService mailService;

	//회원가입 페이지(동기)
	@GetMapping("/join")
	public void joinPage() {
		log.info("/user/join 요청: GET!");
	}
	
	// 아이디 중복 확인(비동기)
	@GetMapping("/id/{userId}")
	@ResponseBody
	public String idCheck(@PathVariable String userId) {
		log.info("클라이언트로부터 전달된 아이디: " + userId); 
		int result = service.idCheck(userId);		
		if(result == 1) return "duplication";
		else return "ok";

	}
	
	// 이메일 인증
	@PostMapping("/email")
	@ResponseBody
	public String mailCheck(@RequestBody String email) { // 받는 형태가 JSON이어서 java형태로 바꿔준다
		log.info("이메일 인증 요청 들어옴: " + email);
		return mailService.joinEmail(email);
	}
	
	
	//회원가입(동기)
	@PostMapping("/join")
	public String join(RequestDTO dto){
		log.info("/user/join 요청: POST! {}", dto);
	    service.regist();
	    return "redirect:/user/login";
	}
	
	//로그인페이지(동기)
	@GetMapping("/login")
	public void loginPage(){}

	//로그인(동기)
	@PostMapping("/login")
	public void login(String userId, String userPw, Model model){
	     log.info("/user/login 요청: POST! {}", userId);
	     model.addAttribute("result", service.login(userId, userPw));
	}
	
	//마이페이지(동기)
	@GetMapping("/myPage")
	public void myPage() {}
	
	//나의정보관리 페이지(동기)
	@GetMapping("/myInfo")
	public void myInfo() {}
	
	
	//회원정보 수정 요청(동기)
	@PostMapping("/update")
	public String update(RequestDTO dto) {
		log.info("/user/update 요청: POST! {}", dto);
		service.update(dto);
		return "redirect:/user/myPage";
	}
	
	//회원정보 삭제 요청(동기)
	@GetMapping("/delete")
	public String delete(String userId) {
		log.info("/user/delete 요청: Get! {}", userId);
		service.delete(userId);
		return "redirect:/";
	}
	
	//나의활동 페이지
	
	//좋아요 목록 저장(비동기)
	@PostMapping("/likeList")
	@ResponseBody
	public void registFtvLike(@RequestParam String userId, @RequestParam int ftvNum) {
		
	}
	
	//좋아요 목록 요청(동기)
	@GetMapping("/likeList")
	public List<FtvResponseDTO> getFtvLIkeList(@RequestParam String userId, @RequestParam int ftvNum){
	      log.info("/festival/likeList 요청: GET! {}", userId);   
	      return service.getLikeList(userId);
	}
	
	
	
	
}
