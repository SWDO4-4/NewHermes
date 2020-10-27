package com.my.hermes.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class GlobalInterceptor extends HandlerInterceptorAdapter {
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession httpSession = request.getSession();
		String userid = (String)httpSession.getAttribute("userid");
		if(userid == null) {
			response.sendRedirect(request.getContextPath() + "/member/loginForm");
			return false;
		}
				
		return true;
	}
}
