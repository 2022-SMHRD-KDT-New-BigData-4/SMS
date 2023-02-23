<%@page import="com.smhrd.model.reviewVO"%>
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
		List<reviewVO> list = (List<reviewVO>)request.getAttribute("review");
		
		response.sendRedirect("main.jsp");
		
	
	
	%>
</body>
</html>