package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.userMapVO;
import com.smhrd.model.userReviewSaveDAO;
import com.smhrd.model.userVO;

public class userReviewSave implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response){
		//  >>>>>>>>>>>>>> 갈때
		// ID 꺼내기
		HttpSession session = request.getSession();
		// ajax 넘겨 받은 데이터 꺼내기
	    int resSeq = Integer.parseInt(request.getParameter("resSeq"));
	    int rvSeq = Integer.parseInt(request.getParameter("rvSeq"));
		userVO user = (userVO)session.getAttribute("user");
		System.out.println("세션에서 가져온 아이디 : "+user.getMb_id());
		System.out.println("ajax에서 가져온 가게순번 : "+resSeq);
		System.out.println("ajax에서 가져온 리뷰순번 : "+rvSeq);
		// vo 객체에 담아서 보내주기
		userMapVO vo1 = new userMapVO(user.getMb_id(),resSeq,rvSeq);
		userReviewSaveDAO dao = new userReviewSaveDAO();
		System.out.println(vo1.getMB_ID());
		System.out.println(vo1.getRes_seq());
		System.out.println(vo1.getRv_seq());
		int result11 = dao.userReviewSave(vo1);
		System.out.println(result11);
		//System.out.println(result);
		//if(result > 0) {
		//	System.out.println("가게순번리뷰순번 insert 성공!");
		//} else {
		//	System.out.println("가게순번리뷰순번 insert 실패!");
		//}
		return null;

	}

}
