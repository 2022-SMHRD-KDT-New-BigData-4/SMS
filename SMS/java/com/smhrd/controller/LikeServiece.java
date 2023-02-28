package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.likesDAO;
import com.smhrd.model.likesVO;

public class LikeServiece implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		// 로그인한 유저가 해당 게시글의 좋아요를 누를때
		// 필요한 정보 : 유저아이디, 게시글순번
		
		// 세션에서 로그인 유저아이디 가져오기
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("user");
		
		// 해당하는 게시글의 순번
		int rv_seq = 23;
		
		// 데이터를 담을 객체 생성
		likesVO vo_lik = new likesVO(id,rv_seq);
		likesDAO dao_lik = new likesDAO();
		
		
		
		// 해당 게시글의 좋아요 상태를 확인
		// 게시글을 가져올때 같이 가져와야 하는 데이터
		
		
		
		
		
		
		if(true) {
			// 만약 좋아요가 안되어 있는 상태라면
			dao_lik.likes(vo_lik);
		} else {		
			// 만약 좋아요가 되어있던 상태였다면
			dao_lik.dislikes(vo_lik);
		}
		
		return null;
	}

}
