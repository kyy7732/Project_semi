package com.semi.project.reply.controller;

import org.springframework.stereotype.Controller; 
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.semi.project.reply.dto.UserReplyModifyRequestDTO;
import com.semi.project.reply.dto.UserReplyRequestDTO;
import com.semi.project.reply.service.ReplyService;
import com.semi.project.util.page.Page;
import com.semi.project.util.page.PageCreator;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/reply")
@RequiredArgsConstructor
@Slf4j
public class ReplyController {
	
	private final ReplyService service;

	// 댓글 페이지
	@GetMapping("/replyList")
	public void reply() {};

	// 댓글 목록 요청
	@GetMapping("/replyList/{ftvNum}")
	public void replyList(Page page,Model model, int ftvNum) {
		log.info("/reply: GET!");
		
		// 검색 시 데이터가 없을 때
		PageCreator creator; 
		int totalCount = service.getTotal(ftvNum); // 조회될 댓글 개수를 구해옴
		
		if(totalCount == 0) { // 에초에 검색을 안했을때로 
			
			page.setKeyword(null); 
			page.setCondition(null);
			
			
			creator = new PageCreator(page, service.getTotal(ftvNum));
			model.addAttribute("msg", "searchFail");
		} else {
			creator = new PageCreator(page, totalCount);
		}
			
		model.addAttribute("replyList", service.getList(page));
		model.addAttribute("pc", creator);

		 
	}
	
	
	
	
	// 댓글 등록 처리
	@PostMapping("/userRegist")
	public String regist(UserReplyRequestDTO dto) {
		service.regist(dto);
		return "redirect:/user/userList"; 
	}
	
	// 댓글 수정하기
	@PostMapping("/userModify")
	public String modify(UserReplyModifyRequestDTO dto) {
		service.update(dto);
		return "redirect:/user/userList";   
	}
	
	// 댓글 삭제하기
	@PostMapping("/delete")
	public String delete(int commentNum) {
		service.delete(commentNum);
		return "redirect:/user/userList"; 
	}
	
		
	
}


















