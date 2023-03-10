// 로그인된 유저의 팔로우를 확인하고
// 팔로우하고 있는 유저들의 리뷰글을 가져오는 로직


package com.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.followVO;
import com.smhrd.model.likesDAO;
import com.smhrd.model.mainVO;
import com.smhrd.model.profileDAO;
import com.smhrd.model.profileVO;
import com.smhrd.model.profilereviewVO;
import com.smhrd.model.reviewDAO;
import com.smhrd.model.reviewVO;
import com.smhrd.model.totalreplyVO;
import com.smhrd.model.userDAO;
import com.smhrd.model.userVO;

public class loginSuccess implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		// 로그인한 유저의 id 가져오기
		HttpSession session = request.getSession();
		userVO vo_mem = (userVO) session.getAttribute("user");
		String id = vo_mem.getMb_id();


		
		
		
		// followVO 객체 만들기
		followVO vo_fol = new followVO(id);		

		// reviewDAO 함수 사용하기
		reviewDAO dao_rev = new reviewDAO();
		List<mainVO> result = dao_rev.search(vo_fol);
		
		
		likesDAO dao_lik = new likesDAO();
		List<mainVO> result1 = dao_lik.rank();
		
		userDAO dao = new userDAO();
	    List<totalreplyVO> total = dao.total();
		;
		
		
		
		
		
		// request 영역에 담아주기
		request.setAttribute("review", result);
		request.setAttribute("rank", result1);
        session.setAttribute("total", total);
		
		
		return "main";
	}

}
