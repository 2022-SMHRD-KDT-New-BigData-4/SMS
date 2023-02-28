<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/login.css"/>
</head>
<body link="black" vlink="black" alink="black">
	<!-- 큰디브 -->
    <div id="main">
        <!-- 큰디브안에 작은 디브1 -->
        <img src="./img/로고4.png" alt="">
        <!-- 큰디브안에 작은 디브2 -->
        <div class="main_box1">
        <!-- 디브2-1-->
        <div class="box1_min1">
            <p id="logo">Foodier</p>
            <div class="box1">
                <form action="LoginService.do" id="login2">
                    <table>
                    <tr>
                        <td><input type="text" name="id" placeholder="ID"></tr>
                    </tr>
                    <tr>
                        <td><input type="password" name="pw" placeholder="비밀번호"></td>
                    </tr>
                    <tr>
                        <td><input id="login_bnt" type="submit" value="로그인"></td>
                    </tr>
                </table>
                </form>
            </div>
            
            <div class="box_bar">
                <hr class="leftHr">
                <div class="or">또는</div>
                <hr class="rightHr">
            </div>
            <br>
        <p>비밀번호를 잊으셨나요?</p>
        </div>
        <!-- 디브2-2 -->
        <div class="box1_min2">
            <p id="text">계정이 없으신가요?</p>
            <a href="./join.jsp" id="join">가입하기</a>
        </div>

        </div> <!--디브2 닫는-->

        

        
    </div> <!--main 디브 닫-->
</body>
</html>