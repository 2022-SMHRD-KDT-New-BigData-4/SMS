package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.userDAO;
import com.smhrd.model.userVO;

@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 0. 한글 인코딩 잡아주기!
		request.setCharacterEncoding("UTF-8");
		
		// 1. 요청받은 데이터 꺼내오기
		String tel = request.getParameter("tel");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
	
		// 2. 요청받은 데이터를 하나로 묶는 작업!
		userVO vo = new userVO(tel, id, pw, name);
		
		// 3. DAO 생성
		userDAO dao = new userDAO();
		
		// 4. DAO가 가지고 있는 회원가입 기능 호출
		int result = dao.join(vo);
		
		// 5. result 값에 따른 페이지 이동!
		
		// 페이지의 주소를 기억 할 변수 선언
		String moveURL = "";
		
		if(result > 0) {
			// 회원가입 성공
			moveURL = "join_success.jsp";
			request.setAttribute("id", id);
			
		}else {
			// 회원가입 실패
			moveURL = "main.jsp";
		}
		
		// 공통으로 실행될 수 있는 영역
		RequestDispatcher rd = request.getRequestDispatcher(moveURL);
		rd.forward(request, response);
		
	}

}
