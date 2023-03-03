<%@page import="com.smhrd.model.totalreplyVO"%>
<%@page import="com.smhrd.model.mainVO"%>
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
		List<totalreplyVO> main= (List<totalreplyVO>)session.getAttribute("total");	
		
		for(totalreplyVO vo: main){
			out.print(vo.getRp_content());
			
		}
	
	
	%>
</body>
</html>