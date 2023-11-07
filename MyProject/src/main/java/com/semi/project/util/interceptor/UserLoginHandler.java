package com.semi.project.util.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import lombok.extern.slf4j.Slf4j;

@Slf4j
public class UserLoginHandler implements HandlerInterceptor{
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		return HandlerInterceptor.super.preHandle(request, response, handler);
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

		
		if(request.getMethod().equals("POST")) {
			ModelMap map = modelAndView.getModelMap();
			String result = (String) map.get("result");
			
			if(result != null) {
				log.info("로그인 성공! ");
				HttpSession session = request.getSession();
				session.setAttribute("login", result);
				response.sendRedirect(request.getContextPath() + "/");
			}else {
				log.info("로그인 실패!");
				modelAndView.addObject("msg" , "loginFail");
			}
			
			
		}
	}

}
