package com.smhrd.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;
import com.smhrd.model.likesDAO;
import com.smhrd.model.likesVO;
import com.smhrd.model.reviewDAO;
import com.smhrd.model.reviewVO;

public class recommendService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		// 추천 창으로 이동했을 때 좋아요가 많은 게시물들을 보여주는 페이지
		
		// 함수 사용하기
		likesDAO dao_lik = new likesDAO();
		List<reviewVO> result = dao_lik.rank();
	
		
		// 카테고리별 랜덤
		reviewDAO dao_rev = new reviewDAO();
		// 한식
		List<reviewVO> result_kr = dao_rev.show_ct1();
		// 중식
		List<reviewVO> result_ch = dao_rev.show_ct2();
		// 이자카야
		List<reviewVO> result_jp = dao_rev.show_ct3();
		// 카페
		List<reviewVO> result_cf = dao_rev.show_ct4();
		
		
		
		
		
		request.setAttribute("rank", result);
		request.setAttribute("show1", result_kr);
		request.setAttribute("show2", result_ch);
		request.setAttribute("show3", result_jp);
		request.setAttribute("show4", result_cf);
		
		
		
		
		
		return "recommend";
	}

}
