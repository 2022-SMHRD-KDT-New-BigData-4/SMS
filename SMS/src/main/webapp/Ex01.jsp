<%@page import="com.smhrd.model.reviewVO"%>
<%@page import="com.smhrd.model.followVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		// 1. request영역에 저장되어있는 데이터 꺼내오기
		List<followVO> list = (List<followVO>)session.getAttribute("follow");
		// 2. 순차적으로 출력
		for(followVO vo:list){
			out.print("<tr>");
			out.print("<td>"+vo.getFollowee()+"</td>");
			out.print("</tr>");
	}
	
	
	%>
	
	<a href="ReviewCheck.do">리뷰 확인하기</a>
	
	
	
</body>
</html>