package com.semi.project.reply.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.semi.project.reply.dto.Page;
import com.semi.project.reply.dto.PageCreator;
import com.semi.project.reply.request.userReplyRequestDTO;
import com.semi.project.reply.service.ReplyService;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/user")
@RequiredArgsConstructor
public class ReplyController {
	
	private final ReplyService service;

	// 페이징 들어간 목록창
	@GetMapping("/reply")
	public void replyList(Page page, Model model) {
		System.out.println("/user/reply: GET!");
		
		// 검색 시 데이터가 없을 때
		PageCreator creator; 
		int totalCount = service.getTotal(page); // 조회될 댓글 개수를 구해옴
		if(totalCount == 0) { // 에초에 검색을 안했을때로 
			page.setKeyword(null); 
			page.setCondition(null);
			creator = new PageCreator(page, service.getTotal(page));
			model.addAttribute("msg", "searchFail");
		} else {
			creator = new PageCreator(page, totalCount);
		}
			
		model.addAttribute("replyList", service.getList(page));
		model.addAttribute("pc", creator);
	}
	
	// 댓글쓰기 페이지를 열어주는 메서드
	@GetMapping("/userRegist")
	public String regist(userReplyRequestDTO dto) {
		service.regist(dto);
		return "redirect:/user/userList"; // 댓글 등록시 어떤화면을 띄워야 하능가??~?~?~?
	}
	
	// 댓글 등록 처리
	@GetMapping("/userContent")
	public String content(int commentNum, 
						Model model, 
						@ModelAttribute("p") Page page) {
		model.addAttribute("userContent", service.getContent(commentNum));
		return "user/user
	}
	
}


















