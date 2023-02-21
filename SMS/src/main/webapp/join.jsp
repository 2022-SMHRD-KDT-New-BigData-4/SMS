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
        
	<form action="JoinService" method="post">
        <div class="loginWindow">
            <h1 id="instaLogo">Foodier</h1>
            <p id="ment">친구들의 맛집 리뷰를 보려면 가입하세요.</p>
            <hr>
            <input type="text" name="tel" placeholder="휴대폰번호" class="inlineToBlock">
            <input type="password" name="id" placeholder="사용자ID" class="inlineToBlock">
            <input type="password" name="pw" placeholder="비밀번호" class="inlineToBlock">
            <input type="password" name="name" placeholder="사용자 이름" class="inlineToBlock">
            <input class="inlineToBlock ordinaryLogin unactivatedLoginColor" type="submit" value="회원가입" style="font-size: 12px">
        <a href="#" class="noneunderline">
            <button class="inlineToBlock facebookLogin">
                <img src="img/facebook.png" alt="" class="facebookIcon">
            </button>
        </a>
    
        </div>
	</form>

        <div class="haveAccount">
            <p>계정이 있으신가요?
              <a href="#" class="noneunderline">로그인</a>
            </p>
        </div>
  </div>
</body>
</html>