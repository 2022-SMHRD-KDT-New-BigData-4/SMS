package com.smhrd.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;
import com.smhrd.model.userDAO;
import com.smhrd.model.userVO;

public class JoinService implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		// 1. 요청받은 데이터 꺼내오기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String nick = request.getParameter("nick");
		// 2. 요청받은 데이터를 하나로 묶기
		userVO vo = new userVO(id, pw, name, nick);
		// 3. DAO 생성
		userDAO dao = new userDAO();
		// 4. dao가지고있는 회원가입 기능 호출
		int result = dao.join(vo);

		// 5. result 값에 따른 페이지 이동!

		// 페이지의 주소를 기억할 변수!
		String moveURL = null;

		if (result > 0) {
			// 회원가입 성공
			moveURL = "login";

		} else {
			// 회원가입 실패
			moveURL = "join";
		}

		return moveURL;

	}

}
