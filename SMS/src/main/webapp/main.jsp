<%@page import="com.smhrd.model.reviewVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
       <link rel="stylesheet" href="./css/newPostMakePopup.css">
       <link rel="stylesheet" href="./css/newPostMakeCss.css">
       <link rel="stylesheet" href="./css/logoutCss.css">
       <link rel="stylesheet" href="./css/logoutPopupCss.css">
       <script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
    </head>
    <body link="black" vlink="black" alink="black">
        <div class="container1">
        <!-- 화면 레이아웃은 left, center, right로 나눠져있음 -->
        
        <!-- 1. left -->
            <div class="left">
            <!-- 로고 어진바보 -->
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
                        <a><img src="./img/save.png"></a>
                        <a class="icontext" href="userMapService.do">보관</a>
                    </li>
                    <!-- 게시물 만들기 버튼 -->
                    <li>
                        <a href="javascript:openPopPost()"><img src="./img/plus.png"></a>
                        <a href="javascript:openPopPost()" class="icontext">만들기</a>
                    </li>
                    <!-- 프로필 버튼 -->
                    <li>
                        <a href="profileService.do"><img src="${user2.mb_pic}" id="getUserPic"></a>
                        <a class="icontext" href="profileService.do">프로필</a>
                    </li>
                </ul> <!-- 카테고리 버튼 종료 ul태그 -->
                
                <!-- 로그아웃 기능이 들어있는 버튼 -->
                <div class="plusBtn">
                    <a href="#" onclick="openPoplogout()"><img src="./img/bar.png" ></a>
                </div>
            </div> <!-- left 종료 디브 -->
            
            <!-- 2.center  -->
            <div class="center">
               <!-- 검색 기능 -->
                <form class="search" action="searchService.do">
                    <input id="searchBar" type="text" name="searchBar">
                    <input id="searchBtn" type="submit" value="검색">
                </form>
                
                <!-- 팔로워 게시물 -->
                <div class="container">
                         
                <c:forEach var="i" begin="0" end="${review.size()-1}" step="1">  
                <!-- postBox클래스 반복 -->
                   <div class="postBox">
                    <div class="post">
                    <!-- 게시물 맨 위칸 -->
                        <div class="postTop">
                           <!-- 팔로워 프로필 사진 -->
                            <a href="#"><img src="${review.get(i).mb_pic}"></a>
                            <ul class="name">
                                <!-- 팔로워 아이디(게시물 작성자)-->                           
                                <li><a href="#">${review.get(i).mb_id}</a></li>
                                <!-- 해시태그 -->                           
                                <li><a href="searchService.do">${review.get(i).rv_hashtag}</a></li>
                                
                            </ul>
                        </div> <!-- postTop 닫는 디브 -->
                        
                        <!-- 게시물 중간 칸 -->
                        <!-- 리뷰 사진 -->
                        <div id="postCenter"><img src="${review.get(i).rv_pic1}"></div>
                        
                        <!-- 게시문 맨 밑칸 -->
                        <div id="postBottom">                       
                            <ul class="pBlist">
                                <li class="one">
                                   <!-- 좋아요 버튼 -->
                                    <a href="javascript:heart;" class="likeIcon heart"><img src="./img/like.png"></a>
                                    <!-- 댓글 버튼 -->
                                    <a href="javascript:openPop()" ><img src="./img/comment.png"></a>
                                    <!-- 보관 버튼 -->
                                    <a href="javascript:save()" class="saveIcon save"><img src="./img/saveWhite.png"></a>
                                </li>
                                <!-- 좋아요 누적수 -->
                                <li class="two">
                                    <p>좋아요 00개</p>
                                </li>
                                <!-- 팔로워 ID(=리뷰작성자 ID) -->
                                <li class="three">                                   
                                    <a href="#">${reivew.get(i).mb_id}</a>
                                </li>
                                <!-- 리뷰 내용 -->
                                <li class="four">
                                    <p>${reivew.get(i).rv_content}</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                   </div> <!--postBox 닫는 디브-->
                   </c:forEach>
                   
                </div>
            </div>
            <!-- 3. right -->
            <div class="right">
                  <!-- 유저프로필 -->
                    <div class="user">
                    <!-- 유저 프로필 사진 -->
                        <a href="#"><img id="userImg" src="${user2.mb_pic}"></a>
                        <div class="userId">
                            <!-- 유저id -->
                            <a href="#">${user.mb_id}</a>
                            <!-- 유저 이름 -->
                            <p>${user.mb_name}</p>
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

<!-- ----------댓글, 하트 --------------------- -->

    <div class="popup_layer" id="popup_layer" style="display: none;">
        <div class="close">
            <a href="javascript:closePop();"><img src="img/x.png" class="m_header-banner-close" width="30px" height="30px"></a>
        </div>
        <div class="popup_box">
            <div style="height: 10px; width: 375px; float: top;">
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
                            <div class="profilepic"> <a href="#"></a></div>
                            <div class=comusername">
                                <div class="comname"> <a href="#"></a> 이름</div>
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
                                        <img src="img/like.png" alt="찜하기" width="20px">
                                    </a>
                                </div>
                            </div>
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
        </form>
            <!--팝업 버튼 영역-->
        </div>
      </div>

<!-- ---------------새 게시글 만들기 팝업----------------------- -->


    <div class="popup_layer_post" id="popup_layer_post" style="display: none;">
        <div class="closePost">
            <a href="javascript:closePopPost()"><img src="img/x.png" class="m_header-banner-close" width="30px" height="30px"></a>
        </div>
        <div class="popup_box_post">
            <div style="height: 10px; width: 375px; float: top;">
            </div>
            <!--팝업 컨텐츠 영역-->
	       <form action="#">
	            <div class="uploadPost">
	                <div class="overlayPost"></div>
	                    <div class="mainNewPost">
	                        <div class="profilePost">
	                            <div class="username">
	                                <div class="namePost">새 게시물 만들기
	                                <div class="postSubmit">
	                                   <input type="submit" class="submitBtn" value="게시하기">
	                                </div>
	                                </div>
	                                
	                            </div>
	                        </div>
	                            <div class="commentPost">
	                                <div class="picPost">
	                                    <img src="img/KakaoTalk_20230223_114555783.png" width="200px" id="album">
	                                    <div class="userNewImage">
	                                    
	                                    <p id="pickPicArea">사진과 동영상을 여기에 끌어다 놓으세요.</p>
	                                    </div>
	                                   <div class="pick">
	                                       <label for="files" id="label">폴더에서 선택</label>
	                                       <input type="file" class="pickBtn" id="files" accept='image/*'>
	                                   </div>
	                                </div>
	                                <div class="textArea">
	                                    <div class="textAreaPic">
	                                        <div class="newTextProfilePic">
	                                        </div>
	                                        <div class="newTextProfileId">
	                                            id
	                                        </div>
	                                    </div>
	                                    <div class="textAreaMain">
	                                        <div class="textAreaMainPost">
	                                        	<textarea placeholder="내용을 입력해주세요."></textarea>
	                                        </div>
	                                    </div>
	                                    <div class="textAreaStar">
	                                    	<div class="star-rating space-x-4 mx-auto">
	                                    		평점
												<input type="radio" id="5-stars" name="rating" value="5" v-model="ratings"/>
												<label for="5-stars" class="star pr-4">★</label>
												<input type="radio" id="4-stars" name="rating" value="4" v-model="ratings"/>
												<label for="4-stars" class="star">★</label>
												<input type="radio" id="3-stars" name="rating" value="3" v-model="ratings"/>
												<label for="3-stars" class="star">★</label>
												<input type="radio" id="2-stars" name="rating" value="2" v-model="ratings"/>
												<label for="2-stars" class="star">★</label>
												<input type="radio" id="1-star" name="rating" value="1" v-model="ratings" />
												<label for="1-star" class="star">★</label>
											</div>
	                                    </div>
	                                    <div class="textAreaRoc">
	                                    	<input type="text" name="userAddress" placeholder="위치">
	                                    </div>
	                                    <div class="textAreaH">
	                                    	<input type="text" name="userHashtag" placeholder="해시태그">
	                                    </div>
	                                </div>
	                        </div>
	                            </div>
	                    </div>
	            </div>
        </form>
            <!--팝업 버튼 영역-->
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
<script>
  var popupWindow = null;

  function openPopup() {
    popupWindow = window.open('팝업 URL', '팝업 이름', '창 속성');
    popupWindow.onblur = function() {
      this.close();
    };
  }
</script>
    
    
    
    
</html>