package com.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.reviewDAO;
import com.smhrd.model.reviewVO;
import com.smhrd.model.userDAO;
import com.smhrd.model.userVO;
import com.smhrd.model.userinfoVO;

public class profileService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		// 프로필페이지에 나오는 데이터들 가져오기
		
		HttpSession session = request.getSession();
		userVO vo = (userVO)session.getAttribute("user");
		String id = vo.getMb_id();
		
		userVO vo_mem = new userVO(id);
		userDAO dao_mem = new userDAO();
		List<userinfoVO> result = dao_mem.profile(vo_mem);
		
		request.setAttribute("userinfo", result);
		
		
		
		
		
		return "profile";
	}

	
	
}
