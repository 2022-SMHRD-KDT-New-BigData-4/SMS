package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.replyDAO;
import com.smhrd.model.replyVO;
import com.smhrd.model.userVO;

public class ReplyService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		// 세션에서 유저 아이디 가져오기
		HttpSession session = request.getSession();
		
		userVO vo_mem = (userVO)session.getAttribute("user");
		String id = vo_mem.getMb_id();

		
		// 폼 태그로 보내준 컨텐츠 받아주기
		String content = request.getParameter("commentText");
		

		// 보고있는 게시글 번호 어떻게 받을거야??
		int rv_req = 23;  // 일단은 아무리뷰에 댓글을 남겨보자
		
		
		// 정보를 보내줄 객체 생성 
		replyVO vo_rep = new replyVO(rv_req,content,id);
		
		
		// 쿼리 실행
		replyDAO dao_rep = new replyDAO();
		int result = dao_rep.reply(vo_rep);
		

		// result 값에 따른 페이지 이동!

		// 페이지의 주소를 기억할 변수!
		String moveURL = null;

		if (result > 0) {
			// 댓글작성 성공
			moveURL = null;		// 댓글작성 성공했는지 확인하는 페이지

		} else {
			// 댓글작성 실패
			moveURL = null;		// 실패했다면 현재 페이지에 남아있어야 함
		}

		return moveURL;
	}

}
