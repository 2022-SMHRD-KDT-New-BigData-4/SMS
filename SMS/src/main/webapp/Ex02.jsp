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
		
		// 2. 순차적으로 출력
		for(reviewVO vo:list){
			out.print("<tr>");
			out.print("<td>"+vo.getContent()+"</td>");
			out.print("<td>"+vo.getMb_id()+"</td>");
			out.print("<td>"+vo.getRv_hashtag()+"</td>");
			out.print("</tr>");
	}
	
	
	%>
</body>
</html>