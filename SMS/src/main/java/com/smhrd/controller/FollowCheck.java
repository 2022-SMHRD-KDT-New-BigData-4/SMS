package com.smhrd.controller;

import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.followDAO;
import com.smhrd.model.followVO;
import com.smhrd.model.reviewDAO;
import com.smhrd.model.reviewVO;
import com.smhrd.model.userVO;

public class FollowCheck implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		// session 에서 id 가져오기
		HttpSession session = request.getSession();
		userVO vo_mem = (userVO)session.getAttribute("user");
		String id = vo_mem.getUserId();
		followVO vo_fol = new followVO(id);
		
		// DB에서 로그인한 유저의 팔로우 대상들 받아오기
		followDAO dao_fol = new followDAO();
		List<followVO> result = dao_fol.search(vo_fol);
		

		
		// request 영역에 담아서 넘겨주기
		session.setAttribute("follow", result);
		
		return "Ex01";
	}

}
