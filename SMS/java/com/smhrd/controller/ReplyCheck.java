package com.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;
import com.smhrd.model.replyDAO;
import com.smhrd.model.replyVO;

public class ReplyCheck implements Command{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		// 버튼을 누를때 해당 게시글의 번호가 들어옴
		
		int rv_seq = 23;	// 프론트에서 버튼을 클릭할때 해당게시글의 번호를 받아오도록 변경이 필요
		
		// 위의 데이터로 리뷰테이블에서 댓글들의 정보 가져오기
		replyVO vo_rep = new replyVO(rv_seq);
		replyDAO dao_rep = new replyDAO();
		List<replyVO> result = dao_rep.search(vo_rep);
		
		// 위의 정보를 request 영역에 담아주기
		request.setAttribute("reply", result);
		
		return null;
	}

}
