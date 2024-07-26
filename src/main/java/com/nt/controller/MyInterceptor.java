package com.nt.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

public class MyInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession(false);
		if (session == null || session.getAttribute("useremail") == null) {
//			RequestDispatcher rd = request.getRequestDispatcher("/on/loginUser");
//			rd.forward(request, response);
			System.out.println("no session found");
			response.sendRedirect("admin/loginUser");
			return false;
		}
		return true;
	}



}
