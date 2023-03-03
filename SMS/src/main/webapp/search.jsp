<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
		<link rel="stylesheet" href="./css/search.css">
		<link rel="stylesheet" href="./css/reset.css">
    	<link rel="stylesheet" href="./css/searchCommentCss.css">
    	<link rel="stylesheet" href="./css/searchCommentPopup.css">
       <link rel="stylesheet" href="./css/logoutCss.css">
       <link rel="stylesheet" href="./css/logoutPopupCss.css"> 
</head>
<body link="black" vlink="black" alink="black">
	 <div class="container1">
            <div class="left">
                <a id="logoText" href="loginSuccess.do"><img class="logo" src="./img/logo.png"></a>
                <ul class="iconBtn">
                    <li>
                        <a href="loginSuccess.do"><img src="./img/home.png">홈</a>
                       <!--  <a class="icontext" href="loginSuccess.do">홈</a>  -->
                    </li>
                    <li>
                        <a href="recommend.do"><img src="./img/rec.png"></a>
                        <a class="icontext" href="recommend.do">추천</a>
                    </li>
                    <li>
                        <a><img src="./img/save.png"></a>
                        <a class="icontext" href="#">보관</a>
                    </li>
                    <li>
                        <a href="javascript:openPop()"><img src="./img/plus.png"></a>
                        <a class="icontext" href="javascript:openPop()">만들기</a>
                    </li>
                    <li>
                        <a href="profileService.do" ><img src="${user2.mb_pic}" id="getUserPic"></a>
                        <a class="icontext" href="profileService.do">프로필</a>
                    </li>
                </ul>
                <div class="plusBtn">
                    <a href="#" onclick="openPoplogout()"><img src="./img/bar.png" ></a>
                </div>
            </div>
            <div class="center">
            
                <form class="search" action="searchService.do">
                    <input id="searchBar" type="text" name="searchBar">
                    <input id="searchBtn" type="submit" value="검색">
                </form>
                
                <!-- 검색해온 자료 반복 -->
                <div class="container">
                  <c:forEach var="i" begin="0" end="2">
                   		<div>
                   		<a type="hidden" onclick="document.forms['ReplyCheck.do'].submit()" value="${searchresult.get(i).res_seq}" href="javascript:openPop()">
                   		<img class="container_img" src="${searchresult.get(i).res_pic1}">
                   		</a>
                   		</div>
                  </c:forEach>                  
                </div>
            </div>
            
            <div class="right">
                    <div class="user">
                        <a href="#"><img id="userImg" src="./img/16802_24920_49.jpg"></a>
                        <div class="userId">
                            <a href="#">${user2.mb_id}</a>
                            <p>${user2.mb_name}</p>
                        </div>

                    </div>
                    <div class="recBox">
                        <p>회원님을 위한 추천</p>
                        <ul>
                       		<c:forEach var="i" begin="0" end="3">
	                            <li class="rec">
	                            <a><img class="rec_img" src="${recommend.get(i).rv_pic1}"></a>
	                                
	                            <div>
	                                <a href="#">${recommend.get(i).mb_id}</a>
	                                <p>${recommend.get(i).mb_name}</p> 
	                            </div>
	                            </li>   
                            </c:forEach> 
                            
                            <li class="rec">
                            <a><img class="rec_img" src="#"></a>
                                
                            <div>
                                <a href="#">추천ID</a>
                                <p>추천인 이름</p> 
                            </div>
                            </li>    
                            <li class="rec">
                            <a><img class="rec_img" src="#"></a>
                                
                            <div>
                                <a href="#">추천ID</a>
                                <p>추천인 이름</p> 
                            </div>
                            </li>    
                            <li class="rec">
                            <a><img class="rec_img" src="#"></a>
                                
                            <div>
                                <a href="#">추천ID</a>
                                <p>추천인 이름</p> 
                            </div>
                            </li>    
                            <li class="rec">
                            <a><img class="rec_img" src="#"></a>
                                
                            <div>
                                <a href="#">추천ID</a>
                                <p>추천인 이름</p> 
                            </div>
                            </li>    
                        </ul>
                        
                    </div>
                    
                
            </div>
        </div>
        
<!-- ------------------------------- -->

    <div class="popup_layer" id="popup_layer" style="display: none;">
        <div class="close">
            <a href="javascript:closePop();"><img src="img/x.png" class="m_header-banner-close" width="30px" height="30px"></a>
        </div>
        <div class="popup_box">
            <div style="height: 900px; width: 1200px; float: top;">
            </div>
            <!--팝업 컨텐츠 영역-->
        <form action="#">
            <div class="upload">
                <div class="overlay"></div>
                    <div class="pic">
                        사진
                    </div>
                    <div class="main">
                        <div class="profile">
                            <div class="profilepic">${searchresult.mb_pic}</div>
                            <div class="username">
                                <div class="name">유저이름</div>
                                <div class="userid">유저id</div>
                            </div>
                        </div>
                        <div class="text">
                            <div class="comment">
                                <div class="comProfilepic">댓글프로필사진</div>
                                <div class="comments">
                                    <div class="comName">댓글이름</div>
                                    <div class="comnUserid">답글달기</div>
                                </div>
                                <div class="comText">댓글내용</div>
                                <div class="like">
                                    <a href="javascript:heart();" class="likeIcon heart">
                                        <img src="img/like.png" alt="찜하기">
                                    </a>
                                </div>
                            </div>
                            <div class="searchCommentIcon">
                            <ul>
                                <li class="searchCommentIcons">
                                	<!-- 좋아요 버튼 -->
                                    <a href="javascript:heart();" class="likeIcon heart"><img src="./img/like.png"></a>
                                    <!-- 보관 버튼 -->
                                    <a href="javascript:save()" class="saveIcon save"><img src="./img/save.png"></a>
                                </li>
                                <li class="likesSum">
                                	좋아요 n개
                                </li>
                            </ul>
                            </div>
                            <div class="userComment">
                                <div class="myProfilepic">내프로필사진</div>
                                <div class="myComment">
                                    <input type="text" id="comInput" placeholder="댓글달기">
                                </div>
                                <div class="submit">
                                    <input type="submit" id="submit" value="게시">
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
        </form>
            <!--팝업 버튼 영역-->
        </div>
      </div>

<!-- ---------------로그아웃 팝업----------------------- -->


<div class="popup_layer_logout" id="popup_layer_logout" style="display: none;">
  <div class="popup_box_logout">
    <div style="height: 10px; width: 375px; float: top;"></div>
    <!--팝업 컨텐츠 영역-->
    <form action="#">
      <div><a href="login.jsp">로그아웃</a></div>
    </form>
  </div>
<div class="popup_overlay_logout" onclick="closePopuplogout()"></div>s
</div>




</body>

<script src="./js/comment.js"></script>

</html>