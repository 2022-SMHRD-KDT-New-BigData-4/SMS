package com.smhrd.controller;

import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.followVO;
import com.smhrd.model.reviewDAO;
import com.smhrd.model.reviewVO;

public class ReviewCheck implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// session에 담긴 팔로위 유저들의 정보 받기
		HttpSession session = request.getSession();
		List<followVO> list = (List<followVO>)session.getAttribute("follow");
		
		// 검색된 리뷰들을 담을 빈 통
		List<reviewVO> final_result = Collections.emptyList();
		
		for(followVO vo:list) {
			// 받아놓은 정보에서 유저들의 아이디만 꺼내기
			String followee = vo.getFollowee();
			
			// 유저의 아이디로 리뷰테이블 정보를 가져올수 있는 객체 만들기
			reviewVO vo_rev = new reviewVO(followee);
			
			// 해당 유저의 리뷰글들 가져오기
			reviewDAO dao_rev = new reviewDAO();
			List<reviewVO> second_result = dao_rev.search(vo_rev);
			
			
			// 가져온 리뷰글들을 하나의 통에 담기
			for(reviewVO vo1:second_result) {
				final_result.add(vo1);
			}
		}
		
		// request 영역에 담아서 넘겨주기
		request.setAttribute("review", final_result);
		

		return "Ex02";
	}

}
