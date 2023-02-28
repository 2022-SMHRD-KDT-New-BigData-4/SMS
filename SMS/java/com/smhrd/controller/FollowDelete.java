package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.followDAO;
import com.smhrd.model.followVO;

public class FollowDelete implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		// session 에서 로그인한 유저의 아이디 가져오기
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("user");
				
		// 해당 게시글의 작성자 아이디 가져오기
				
		String rv_id = "test1"; 
		// 페이지에서 클릭하는 div의 작성자 아이디 넘겨주는거 받아야 함
				
				
		// 객체 만들기
		followVO vo_fol = new followVO(id,rv_id);
		
		// 함수 사용하기
		followDAO dao_fol = new followDAO();
		int result = dao_fol.delete(vo_fol);
		
		return null;
	}

}
