package com.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.profileDAO;
import com.smhrd.model.profileVO;
import com.smhrd.model.totalreplyVO;
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
	    List<totalreplyVO> total = dao.total();

		userVO result = dao.login(new userVO(id, pw));

		if (result != null) {

			HttpSession session = request.getSession();
			session.setAttribute("user", result);
			
			// 로그인한 유저의 프로필테이블에서 프로필사진 가져오기
			profileVO vo_pro = new profileVO(id);
			profileDAO dao_pro = new profileDAO();
			profileVO user_pro = dao_pro.pic(vo_pro);
			// session에 담아주기
			session.setAttribute("user2", user_pro);
	        session.setAttribute("total", total);
			
			return "redirect:/loginSuccess.do";
		} else {
			return "LoginFail";
		}


	}

}
