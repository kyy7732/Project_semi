package com.semi.project.reply.controller;

import org.springframework.stereotype.Controller;  
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.semi.project.reply.request.UserReplyModifyRequestDTO;
import com.semi.project.reply.request.UserReplyRequestDTO;
import com.semi.project.reply.service.ReplyService;
import com.semi.project.util.page.Page;
import com.semi.project.util.page.PageCreator;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/reply")
@RequiredArgsConstructor
public class ReplyController {
	
	private final ReplyService service;

	// 페이징 들어간 목록창
	@GetMapping("/replyList")
	public void replyList(Page page, Model model) {
		System.out.println("/reply: GET!");
		
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
	
	
	
	
	// 댓글 등록 처리
	@GetMapping("/userRegist")
	public String regist(UserReplyRequestDTO dto) {
		service.regist(dto);
		return "redirect:/user/userList"; // 댓글 등록시 어떤화면을 띄워야 하능가??~?~?~?
	}
	
	// 댓글 수정하기
	@PostMapping("/userModify")
	public String modify(UserReplyModifyRequestDTO dto) {
		service.update(dto);
		return "redirect:/user/userList";   // 어디로 보내하 하능가~?~?~?~?~?
	}
	
	// 댓글 삭제하기
	@PostMapping("/delete")
	public String delete(int commentNum) {
		service.delete(commentNum);
		return "/redirect:/user/userList"; // 어디로 보내야 하능가~?~?~?~?~?~?
	}
	
		
	
}


















