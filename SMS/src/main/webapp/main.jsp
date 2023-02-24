<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="./css/main.css">
        <link rel="stylesheet" href="./css/reset.css">
    	<link rel="stylesheet" href="./css/commentCss.css">
    	<link rel="stylesheet" href="./css/commentPopup.css">
    	<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
    </head>
    <body>
        <div class="container1">
        <!-- 화면 레이아웃은 left, center, right로 나눠져있음 -->
        
        <!-- 1. left -->
            <div class="left">
            <!-- 로고 -->
                <h1 class="logo"><a id="logoText" href="#">FOODIER</a></h1>
                <!-- 카테고리 버튼(리스트) -->
                <ul class="iconBtn">
                    <!-- 홈 버튼 -->
                    <li>
                        <a><img src="./img/home.png"></a>
                        <a class="icontext" href="#">홈</a>
                    </li>
                    <!-- 추천 버튼 -->
                    <li>
                        <a><img src="./img/rec.png"></a>
                        <a class="icontext" href="#">추천</a>
                    </li>
                    <!-- 보관 버튼 -->
                    <li>
                        <a><img src="./img/save.png"></a>
                        <a class="icontext" href="#">보관</a>
                    </li>
                    <!-- 게시물 만들기 버튼 -->
                    <li>
                        <a href="javascript:openPopPost()"><img src="./img/plus.png"></a>
                        <a href="javascript:openPopPost()" class="icontext" href="#">만들기</a>
                    </li>
                    <!-- 프로필 버튼 -->
                    <li>
                        <a></a><img src="#">
                        <a class="icontext" href="#">프로필</a>
                    </li>
                </ul> <!-- 카테고리 버튼 종료 ul태그 -->
                
                <!-- 로그아웃 기능이 들어있는 버튼 -->
                <div class="plusBtn">
                    <a href="#"><img src="./img/bar.png" ></a>
                </div>
            </div> <!-- left 종료 디브 -->
            
            <!-- 2.center  -->
            <div class="center">
            	<!-- 검색 기능 -->
                <form class="search" action="#">
                    <input id="searchBar" type="text">
                    <input id="searchBtn" type="submit" value="검색">
                </form>
                
                <!-- 팔로워 게시물 -->
                <div class="container">
                
                <%
                String[] review = request.getParameterValues("review");
                 
                for(int i = 0;i<3;i++){ %>              
                <!-- postBox클래스 반복 -->
                   <div class="postBox">
                    <div class="post">
                    <!-- 게시물 맨 위칸 -->
                        <div class="postTop">
                        	<!-- 팔로워 프로필 사진 -->
                            <a href="#"><img src="./img/ex_proflie.jpg"></a>
                            <ul class="name">
                                <!-- 팔로워 아이디(게시물 작성자)-->                        	
                                <li><a href="#">${review.get(i).mb_id}</a></li>
                                <!-- 해시태그 -->                           
                                <li><a href="#">${review.get(i).rv_hashtag}</a></li>
                                
                            </ul>
                        </div> <!-- postTop 닫는 디브 -->
                        
                        <!-- 게시물 중간 칸 -->
                        <!-- 리뷰 사진 -->
                        <div id="postCenter"><img src="./img/ex_post.jpg"></div>
                        
                        <!-- 게시문 맨 밑칸 -->
                        <div id="postBottom">                    	
                            <ul class="pBlist">
                                <li class="one">
                                	<!-- 좋아요 버튼 -->
                                    <a href="javascript:;" class="likeIcon heart"><img src="./img/like.png"></a>
                                    <!-- 댓글 버튼 -->
                                    <a href="javascript:openPop()" ><img src="./img/comment.png"></a>
                                    <!-- 보관 버튼 -->
                                    <a><img src="./img/save.png"></a>
                                </li>
                                <!-- 좋아요 누적수 -->
                                <li class="two">
                                    <p>좋아요 00개</p>
                                </li>
                                <!-- 팔로워 ID(=리뷰작성자 ID) -->
                                <li class="three">                                	
                                    <a href="a">${reivew.get(i).mb_id}</a>
                                </li>
                                <!-- 리뷰 내용 -->
                                <li class="four">
                                    <p></p>
                                </li>
                            </ul>
                        </div>
                    </div>
                   </div> <!--postBox 닫는 디브-->
                   <% } %>
                   
                </div>
            </div>
            <!-- 3. right -->
            <div class="right">
            		<!-- 유저프로필 -->
                    <div class="user">
                    <!-- 유저 프로필 사진 -->
                        <a href="#"><img id="userImg" src="./img/ex_proflie.jpg"></a>
                        <div class="userId">
                            <!-- 유저id -->
                            <a href="#"></a>
                            <!-- 유저 이름 -->
                            <p></p>
                        </div>

                    </div>
                    <!-- 팔로워 수가 많은 이용자 추천 -->
                    <div>
                        <p>회원님을 위한 추천</p>
                        <ul class="recList">
                        
                            <!-- class="rec" 클래스 li 반복 / 5개의 리스트를 보여줄 예정--> 
                            <li class="rec">
                            	<!-- 추천 이용자 프로필 사진 / class="rec_img" -->
                            	<a><img class="rec_img" src="#"></a>        
                            	<div>
                            		<!-- 추천자 id -->
                                	<a href="#">추천ID</a>
                                	<!-- 추천자 이름 -->
                                	<p>추천인 이름</p> 
                            	</div>
                            </li> <!-- rec클래스 닫는 태그 -->
                                   
                        </ul> 
                        
                    </div>

            </div>
        </div>

<!-- ----------댓글, 만들기, 하트 --------------------- -->

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
                            <div class="profilepic"> <a href="#"></a></div>
                            <div class="username">
                                <div class="name"> <a href="#"></a> 이름</div>
                                <div class="userid">유저id</div>
                            </div>
                        </div>
                        <div class="text">
                            <div class="comment">
                                <div class="comProfilepic"><a href="#"></a></div>
                                <div class="comments">
                                    <div class="comName"><a href="#"></a>댓글이름</div>
                                </div>
							    <div class="comText" onclick="toggleEllipsis(this)">
							        <p class="card-description">텍스트 길이만큼 늘어나는 div</p>
								    <input type="checkbox" class="card-content__more-btn">
							    </div>
                                <div class="like">
                                    <a href="javascript:;" class="likeIcon heart">
                                        <img src="img/like.png" alt="찜하기"">
                                    </a>
                                </div>
                            </div>
                            <%  session.setAttribute("user", "test");
								String str = (String)session.getAttribute("user");
							%>
                            <div class="userComment">
                                <div class="myProfilepic"> <a href="#"></a></div>
                                <form action="ReplyService.do">
                                <div class="myComment">
                                    <input type="text" id="comInput" name="commentText" placeholder="댓글달기">
                                </div>
                                <div class="submit">
                                    <input type="submit" id="submit" value="게시">
                                </div>
                                </form>
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