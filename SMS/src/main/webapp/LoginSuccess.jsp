<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 나중에 지울 파일 -->


	<%
		Object user = session.getAttribute("user");
		
	%>


	<h1>로그인성공</h1>
	${user.userId}님 환영합니다
	<hr>
	<%=user %>님 환영합니다
	

</body>
</html>