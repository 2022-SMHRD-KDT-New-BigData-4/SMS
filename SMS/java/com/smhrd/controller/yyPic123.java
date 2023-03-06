package com.smhrd.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.yyPicDAO;
import com.smhrd.model.yyPicVO;


public class yyPic123 extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 프로필페이지에 나오는 데이터들 가져오기
		
		
			yyPicDAO yydao = new yyPicDAO();
			List<yyPicVO> result111 = yydao.yyPic();
			
			 request.setAttribute("yyPic", result111);
//			try {
//				// 1) PrintWriter 꺼내오기!
//				PrintWriter out = response.getWriter();
//				// 2) 사용해서 출력하기!
//				for(int i=0; i< result111.size();i++) {
//					
//				out.println(result111.get(i).getRv_pic1());
//				}
//				
//			} catch (IOException e) {
//				e.printStackTrace();
//			}

	}

}
