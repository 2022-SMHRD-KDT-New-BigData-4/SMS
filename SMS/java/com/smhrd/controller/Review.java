package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;
import com.smhrd.model.reviewDAO;
import com.smhrd.model.reviewVO;

public class Review implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		// 게시물을 눌렀을때 해당 게시글 페이지로 이동
		// 해당 게시글 번호 받아오기
		int rv_seq = Integer.parseInt(request.getParameter("food_rec"));
		
		reviewVO vo_rev = new reviewVO(rv_seq);
		reviewDAO dao_rev = new reviewDAO();
		reviewVO result = dao_rev.reviewOpen(vo_rev);
		
		request.setAttribute("reviewOpen", result);
		
		
		
		return null;
	}

}
