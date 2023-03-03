package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.restaurantDAO;
import com.smhrd.model.restaurantVO;
import com.smhrd.model.reviewDAO;
import com.smhrd.model.reviewVO;

public class ReviewMake implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		// 작성자 아이디 가져오기 -> 세션에서 로그인된 유저아이디
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("user");
		
		// 입력되어야 하는 값들?
		// 리뷰내용, 리뷰평점, 작성자아이디, 작성하는 가게, 사진, 해시태그
		
		// 리뷰내용, 리뷰평점, 작성하는 가게, 해시태그는 폼태그로 넘겨받음
		String rv_content = request.getParameter("");
		int rv_ratings = Integer.parseInt(request.getParameter("rating"));
		String res_name = request.getParameter("userAddress");
		String rv_hashtag = request.getParameter("userHashtag");
		
		// 입력받은 가게 이름을 가지고 res_seq 찾아와야 함
		restaurantVO vo_res = new restaurantVO(res_name);
		restaurantDAO dao_res = new restaurantDAO();
		restaurantVO result = dao_res.search(vo_res);
		int res_seq = result.getRes_seq();
		
		// 위의 값들을 통해서 DB 리뷰테이블에 저장하기
		reviewVO vo_rev = new reviewVO(rv_content,rv_ratings,id,res_seq,rv_hashtag);
		reviewDAO dao_rev = new reviewDAO();
		int cnt = dao_rev.make(vo_rev);
		
		String moveURL = null;

		if (cnt > 0) {
			// 리뷰작성 성공
			moveURL = "main";

		} else {
			// 리뷰작성 실패
			moveURL = null;
		}

		return moveURL;
		
	}

}
