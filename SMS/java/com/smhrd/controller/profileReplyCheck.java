package com.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;
import com.smhrd.model.replyDAO;
import com.smhrd.model.replyVO;
import com.smhrd.model.reviewpageVO;

public class profileReplyCheck implements Command {
	
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		// 버튼을 누를때 해당 게시글의 번호가 들어옴
		
		int rv_seq = Integer.parseInt(request.getParameter("profile_myReview"));	// 프론트에서 버튼을 클릭할때 해당게시글의 번호를 받아오도록 변경이 필요
		
		// 리뷰데이터
		replyVO vo_rep = new replyVO(rv_seq);
		replyDAO dao_rep = new replyDAO();
		reviewpageVO result_reviewer = dao_rep.reviewer(vo_rep);
		
		// 댓글데이터
		List<reviewpageVO> result_replyer = dao_rep.replyer(vo_rep);
		
		// 위의 정보를 request 영역에 담아주기
		request.setAttribute("reviewer", result_reviewer);
		request.setAttribute("replyer", result_replyer);
		
		return "redirect:/profileService.do";
	}
	
}
