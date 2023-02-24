
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% session.setAttribute("user", "test");
	String str = (String)session.getAttribute("user");
%>


<%=str %>
	<!-- 댓글 기입하여 DB에 저장하기 -->	
	<!-- 저장 이후 다시 게시글 페이지로 이동해서 작성한 댓글 나오는거 확인 -->	

	<!-- 해당 게시글로 넘어올 때 게시글 번호 어떻게 받아올거야? -->	
	<form action="ReplyService.do">
		<input type="text" name="commentText">
		<input type="submit" value="댓글작성">
	</form>
	
</body>
</html>