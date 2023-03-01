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
		String id = (String)session.getAttribute("user");
		
		userVO vo_mem = new userVO(id);
		userDAO dao_mem = new userDAO();
		userinfoVO result = dao_mem.profile(vo_mem);
		
		request.setAttribute("userinfo", result);
		
		// 해당 유저의 리뷰데이터 가져오기
		reviewDAO dao_rev = new reviewDAO();
		List<reviewVO> result_rev = dao_rev.myreview(vo_mem);
		
		request.setAttribute("myreview", result_rev);
		
		
		
		
		return "proflie";
	}

	
	
}
