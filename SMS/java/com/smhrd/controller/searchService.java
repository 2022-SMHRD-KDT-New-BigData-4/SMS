package com.smhrd.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;
import com.smhrd.model.restaurantDAO;
import com.smhrd.model.restaurantVO;
import com.smhrd.model.reviewDAO;
import com.smhrd.model.reviewVO;

public class searchService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		// 검색창에 입력을 햇을 때 검색을 하는 클래스
		
		// 인풋 태그를 통해 입력받은 값을 저장
		String search = request.getParameter("searchBar");
		// 검색창의 인풋태그와 연결을 해야 함!!!!!!!!!!!!!
		
		
		// 검색한 데이터가 가게 이름인가?
		restaurantVO vo_res = new restaurantVO(search);
		restaurantDAO dao_res = new restaurantDAO();
		restaurantVO result = dao_res.search(vo_res);
		
		
		List<reviewVO> list = new ArrayList<>();
		
		if(result != null) {
			// 위의 결과가 있다면 (즉, 가게 이름이 존재한다면)
			int num = result.getRes_seq();
			
			// 리뷰테이블에서 데이터 가져오기
			reviewVO vo_rev = new reviewVO(search,num,search);
			reviewDAO dao_rev = new reviewDAO();
			List<reviewVO> list1 = dao_rev.usersearch1(vo_rev);
			
			list = list1;
		}else {
			// 가게의 이름이 존재하지 않을 때
			reviewVO vo_rev = new reviewVO(search,search);
			reviewDAO dao_rev = new reviewDAO();
			List<reviewVO> list2 = dao_rev.usersearch1(vo_rev);
			
			list = list2;
		}
		
		request.setAttribute("searchresult", list);
		
		
		
		
		return "search";
	}

}
