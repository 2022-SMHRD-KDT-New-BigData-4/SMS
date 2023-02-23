package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.userDAO;
import com.smhrd.model.userVO;

public class LoginService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		// 1, 요청 자료 받아오기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
			
		// 2. DB와 연결하기
		userDAO dao = new userDAO();
		
		userVO result = dao.login(new userVO(id, pw));
				
				
				
		if(result != null) {
			
			HttpSession session = request.getSession();
			session.setAttribute("user", result);		
			return "redirect:/FollowCheck.do";
		}else {
			return "LoginFail";
		}
		
	}

}
