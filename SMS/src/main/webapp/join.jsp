<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/join.css" />
</head>
<body>
	 <div class="contentsWrap">
        
	<form action="JoinService.do" method="post">
        <div class="loginWindow">
            <h1 id="instaLogo">Foodier</h1>
            <p id="ment">친구들의 맛집 리뷰를 보려면 가입하세요.</p>
            <hr>
            <input type="text" name="id" placeholder="사용자ID" class="inlineToBlock">
            <input type="password" name="pw" placeholder="비밀번호" class="inlineToBlock">
            <input type="text" name="name" placeholder="사용자 이름" class="inlineToBlock">
            <input type="text" name="nick" placeholder="닉네임" class="inlineToBlock">
            <input class="inlineToBlock ordinaryLogin unactivatedLoginColor" type="submit" value="회원가입" style="font-size: 12px">
        </div>
	</form>

        <div class="haveAccount">
            <p>계정이 있으신가요?
              <a href="./login.jsp" class="noneunderline">로그인</a>
            </p>
        </div>
  </div>
</body>
</html>