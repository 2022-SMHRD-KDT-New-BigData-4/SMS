package com.smhrd.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.command.Command;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	HashMap<String, Command> map = null;
	
	public void init(ServletConfig config) throws ServletException {
		// 어떤 요청이 들어왔을 때, 해당하는 요청을 수행할 수 있는 클래스의 객체 생성!
		map = new HashMap<>();
		
		map.put("FollowCheck.do", new FollowCheck());		
		map.put("FollowDelete.do", new FollowDelete());		
		map.put("FollowInsert.do", new FollowInsert());		
		map.put("JoinService.do", new JoinService());		
		map.put("LikeServiece.do", new LikeServiece());		
		map.put("LoginService.do", new LoginService());		
		map.put("loginSuccess.do", new loginSuccess());		
		map.put("profileService.do", new profileService());		
		map.put("recommendService.do", new recommendService());		
		map.put("ReplyCheck.do", new ReplyCheck());		
		map.put("ReplyService.do", new ReplyService());		
		map.put("ReviewCheck.do", new ReviewCheck());		
		map.put("ReviewMake.do", new ReviewMake());		
		map.put("searchService.do", new searchService());		
		map.put("userMapService.do", new userMapService());		
		
	}


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// 1. 들어온 요청이 어떤 요청인지 판단!
		// getRequestURI() : 요청된 주소값 자체를 가져오는 메소드!
		String uri = request.getRequestURI();
		System.out.println("요청된 주소 : " + uri);

		// 프로젝트 이름만 분리하기 -> getContextPath()
		String path = request.getContextPath();
		System.out.println("프로젝트 이름 : " + path);

		// 요청된 서블릿의 이름
		// http://localhost:8081/MessageSystem/update.jsp
		// uri(String) -> /MessageSystem/update.jsp
		String finaluri = uri.substring(path.length() + 1);
		System.out.println("요청된 서블릿 : " + finaluri);

		String finalpath = null;
		// 1. Go로 들어오면
		if (finaluri.contains("Go")) {
			// 2. WEB-INF/main.jsp로 이동
			// GoMain.do ---> main.jsp
			// GoUpdate.do ---> update.jsp
			finalpath = finaluri.substring(2).replaceAll(".do", "").toLowerCase();
		} else {
			// 3. 그렇지 않은경우에는
			Command con = map.get(finaluri);
			finalpath = con.execute(request, response);
		}

		// finalpath ---> redirect:/GoMain.do
		if (finalpath == null) {
			// ajax 통신인 경우에는 그냥 화면 이동을 안하겠다!
		} else if (finalpath.contains("redirect:/")) {
			// redirect방식
			response.sendRedirect(finalpath.substring(10));
		} else {
			// 페이지 결과 응답하기!
			RequestDispatcher rd = request.getRequestDispatcher(/*"WEB-INF/" +*/ finalpath + ".jsp");
			
			rd.forward(request, response);
		}
		
	}
		
}

