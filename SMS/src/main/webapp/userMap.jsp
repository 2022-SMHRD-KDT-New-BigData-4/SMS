<%@page import="com.smhrd.model.restaurantVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>주소로 장소 표시하기</title>
    <link rel="stylesheet" href="./css/userMap.css">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Document</title>
    <link rel="stylesheet" href="./css/main.css">
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./css/commentCss.css">
    <link rel="stylesheet" href="./css/commentPopup.css">
    <link rel="stylesheet" href="./css/newPostMakePopup.css">
    <link rel="stylesheet" href="./css/newPostMakeCss.css">
    <script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ad32e4cc626799cc0ad5db80f46f316a&libraries=services"></script>   
</head>
<body link="black" vlink="black" alink="black">
		
		<div class="container1">
        <!-- 화면 레이아웃은 left, center, right로 나눠져있음 -->
        
        	<!-- 1. left -->
            <div class="left">
            <!-- 로고 -->
                <a id="logoText" href="loginSuccess.do"><img class="logo" src="./img/logo.png"></a>
                <!-- 카테고리 버튼(리스트) -->
                <ul class="iconBtn">
                    <!-- 홈 버튼 -->
                    <li>
                        <a href="loginSuccess.do"><img src="./img/home.png"></a>
                        <a class="icontext" href="loginSuccess.do">홈</a>
                    </li>
                    <!-- 추천 버튼 -->
                    <li>
                        <a href="recommendService.do"><img src="./img/rec.png"></a>
                        <a class="icontext" href="recommendService.do">추천</a>
                    </li>
                    <!-- 보관 버튼 -->
                    <li>
                        <a href="userMapService.do"><img src="./img/save.png"></a>
                        <a class="icontext" href="userMapService.do">보관</a>
                    </li>
                    <!-- 게시물 만들기 버튼 -->
                    <li>
                        <a href="javascript:openPopPost()"><img src="./img/plus.png"></a>
                        <a href="javascript:openPopPost()" class="icontext">만들기</a>
                    </li>
                    <!-- 프로필 버튼 -->
                    <li>
                        <a><img src="${user2.mb_pic}" id="getUserPic"></a>
                        <a class="icontext" href="profileService.do">프로필</a>
                    </li>
                </ul> <!-- 카테고리 버튼 종료 ul태그 -->
                
                <!-- 로그아웃 기능이 들어있는 버튼 -->
                <div class="plusBtn">
                    <a href="#"><img src="./img/bar.png" ></a>
                </div>
            </div> <!-- left 종료 디브 -->
            
            <!-- 2.saveBar -->
            <div class="saveBar">
            	<!-- 반복-->
            	<div class="saveReview">
            		<ul class="saveReviewBox">
            			<li class="saveReviewBox_1">
            			<img src="#">
            			<div>
            				<a>id</a>
            				<p>이름</p>
            			</div>
            			</li>
            			
            			<li class="saveReviewBox_2">
            				<a href="#">가게명</a>
            			</li>
            			<li class="saveReviewBox_3">	
            				<img src="#">
            			</li>
            			
            			<li class="saveReviewBox_4">
            				<img src="./img/like.png"><img src="./img/comment.png"><img src="./img/saveBlack.png">
							<div class="likeId">
            				<P>좋아요 누적</P>
            				<a>id</a>
            				</div>
            			</li>
            			
            			<li class="saveReviewBox_5">
            				<p>리뷰내용</p>
            			</li>
            		</ul>
            	</div> <!-- 닫히는 디브-->

            </div>
            <!-- 3.map  -->
            <div class="mapBox">
				<!-- 지도가 들어가는 부분 -->
				<div id="map" style="height:940px;"></div>
            </div>

        </div>



<script>
$('body').scroll(function() {
	  // 스크롤 이동 시 실행되는 코드
	  $(window).scrollTop();
	})
</script>
<!-- 데이터 꺼내기 -->
<%
List<restaurantVO> list= (List<restaurantVO>)request.getAttribute("list");
%>
<script>
    // 데이터 꺼내오기
    let data1 = []
    let data2 = []
    let data3 = []
    let data4 = []
    let data5 = []
    let data6 = []
<%for(int i=0;i<list.size();i++){%>
	data1.push('<%=list.get(i).getRes_name()%>')
	data2.push('<%=list.get(i).getRes_pic1()%>')
	data3.push('<%=list.get(i).getOpen_time()%>')
	data4.push('<%=list.get(i).getClose_time()%>')
	data5.push('<%=list.get(i).getRes_addr()%>')
	data6.push('<%=list.get(i).getRes_tel()%>')
<%}%>
</script>
<script src="./js/userMap.js"></script>
</body>
</html>