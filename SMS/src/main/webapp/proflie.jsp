<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="./css/proflie.css">
        <link rel="stylesheet" href="./css/reset.css">
    	<link rel="stylesheet" href="./css/commentCss.css">
    	<link rel="stylesheet" href="./css/commentPopup.css">
    	<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
    </head>
    <body link="black" vlink="black" alink="black">
        <div class="container1">
        
            <div class="left">
                <h1 class="logo"><a id="logoText" href="./main.jsp">FOODIER</a></h1>
                <ul class="iconBtn">
                    <li>
                        <a href="./main.jsp"><img src="./img/home.png"></a>
                        <a class="icontext" href="./main.jsp">홈</a>
                    </li>
                    <li>
                        <a href="#"><img src="./img/rec.png"></a>
                        <a class="icontext" href="#">추천</a>
                    </li>
                    <li>
                        <a href="./userMap.jsp"><img src="./img/save.png"></a>
                        <a class="icontext" href="./userMap.jsp">보관</a>
                    </li>
                    <li>
                        <a href="javascript:openPopPost()"><img src="./img/plus.png"></a>
                        <a href="javascript:openPopPost()" class="icontext" href="#">만들기</a>
                    </li>
                    <li>
                        <a href="./userProflie.jsp"><img src="#"></a>
                        <a class="icontext" href="./userProflie.jsp">프로필</a>
                    </li>
                </ul>
                <div class="plusBtn">
                    <a href="#"><img src="./img/bar.png" ></a>
                </div>
            </div>
            <div class="center">
                <form class="search" action="#">
                    <input id="searchBar" type="text">
                    <input id="searchBtn" type="submit" value="검색">
                </form>
                <div class="container">
                  <div class="proflieBox">
                  	<div><img id="setImg" src="./img/ex_post.jpg"></div>
                    <div>
                    	<ul class="userSetText">
                    		<li>유저아이디<button>프로필 변경</button></li>.
                    		<li>유저 이름</li>
                    		<li><br>소개글</li>
                    	</ul>
                    </div>
                  </div>
                  <div><hr id="proflie_bar"></div>
                  <div class="userReview">
                   <div><a href="javascript:openPop()"><img src="./img/ex_post.jpg"></a></div>
                   <div><a href="#"><img src="#"></a></div>
                   <div><a href="#"><img src="#"></a></div>
                   <div><a href="#"><img src="#"></a></div>
                   <div><a href="#"><img src="#"></a></div>
                   <div><a href="#"><img src="#"></a></div>
                  </div>
                </div>
                
            </div>
            <div class="right">
                    <div class="user">
                    </div>
                    <div class="recListBox">
                      
                        
                    </div>
                    
               
            </div>
        </div>

<!-- ------------------------------- -->

    <div class="popup_layer" id="popup_layer" style="display: none;">
        <div class="close">
            <a href="javascript:closePop();"><img src="img/x.png" class="m_header-banner-close" width="30px" height="30px"></a>
        </div>
        <div class="popup_box">
            <div style="height: 10px; width: 375px; float: top;">
            </div>
            <!--팝업 컨텐츠 영역-->
            <div class="upload">
                <div class="overlay"></div>
                    <div class="pic">
                        사진
                    </div>
                    <div class="main">
                        <div class="profile">
                            <div class="profilepic">프로필사진</div>
                            <div class="username">
                                <div class="name">이름</div>
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
                                    <a href="javascript:;" class="likeIcon heart">
                                        <img src="img/like.png" alt="찜하기"">
                                    </a>
                                </div>
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
        
            <!--팝업 버튼 영역-->
        </div>
      </div>





    </body>
    
<script src="./js/comment.js"></script>
    
    
    
    
</html>