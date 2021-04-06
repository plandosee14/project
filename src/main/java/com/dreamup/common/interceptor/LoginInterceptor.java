package com.dreamup.common.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor extends HandlerInterceptorAdapter{

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//System.out.println("login preHandle 잘되느냐!");
		
		HttpSession session = request.getSession();
		if (session.getAttribute("session") != null) {
			session.removeAttribute("session");
			
		}
		
		return super.preHandle(request, response, handler);
	}

}
