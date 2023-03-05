package com.smhrd.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.command.Command;
import com.smhrd.model.restaurantVO;
import com.smhrd.model.reviewVO;
import com.smhrd.model.saveVO;
import com.smhrd.model.userMapDAO;
import com.smhrd.model.userMapVO;
import com.smhrd.model.userReviewDAO;
import com.smhrd.model.userVO;

public class userMapService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response){
		//  >>>>>>>>>>>>>> 갈때
		// ID 꺼내기
		HttpSession session = request.getSession();
		userVO user = (userVO)session.getAttribute("user");
		System.out.println("세션에서 가져온 아이디 : "+user.getMb_id());
		// vo 객체에 담아서 보내주기
		userMapVO vo = new userMapVO(user.getMb_id());
		//userReviewVO vo1 = new userReviewVO(user.getMb_id());
		//System.out.print(vo);
		
		// 이후 dao에 id담은 vo 객체 dao의 메소드에 넣고 조회값 list 에담기
		userMapDAO dao = new userMapDAO();
		userReviewDAO dao1 = new userReviewDAO();
		
		// 유저 보관함 지도 데이터 가져오기
		List<restaurantVO> list =dao.userMap(vo);
		// 유저 보관함 리뷰 데이터 가져오기
		List<saveVO> list1 =dao1.userReview(vo);
		
		// <<<<<<<<<<<<<<<<<<<<<<<<<< 올때
		
		// 2. 조회한 정보를 request 영역에 담기
		request.setAttribute("list", list);
		request.setAttribute("list1", list1);
		//System.out.println(list.get(0).getRes_name());
		//System.out.println(id);
		
		
	
		return "userMap";

	}

}
