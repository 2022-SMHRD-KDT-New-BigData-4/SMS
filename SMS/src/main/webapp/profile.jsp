<%@page import="com.smhrd.model.userinfoVO"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.reviewVO"%>
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
        <link rel="stylesheet" href="./css/proflie.css">
        <link rel="stylesheet" href="./css/main.css">
        <link rel="stylesheet" href="./css/reset.css">
    	<link rel="stylesheet" href="./css/commentPopup.css">
    	<link rel="stylesheet" href="./css/newPostMakeCss.css">
    	<link rel="stylesheet" href="./css/newPostMakePopup.css">
        <link rel="stylesheet" href="./css/logoutCss.css">
        <link rel="stylesheet" href="./css/logoutPopupCss.css"> 
    	<link rel="stylesheet" href="./css/profilePopCss.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>  	
    	<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>

    </head>
    <body link="black" vlink="black" alink="black">
        <div class="container1">
        <% 
        List<userinfoVO> a = (List<userinfoVO>)request.getAttribute("userinfo");%>
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
                        <a><img src="./img/save.png"></a>
                        <a class="icontext" href="#">보관</a>
                    </li>
                    <!-- 게시물 만들기 버튼 -->
                    <li>
                        <a href="javascript:openPopPost()"><img src="./img/plus.png"></a>
                        <a href="javascript:openPopPost()" class="icontext">만들기</a>
                    </li>
                    <!-- 프로필 버튼 -->
                    <li>
                        <a id="profileProfile" href="profileService.do"><img src="${user2.mb_pic}" id="getUserPic"></a>
                        <a class="icontext" href="profileService.do">프로필</a>
                    </li>
                </ul> <!-- 카테고리 버튼 종료 ul태그 -->
                
                <!-- 로그아웃 기능이 들어있는 버튼 -->
                <div class="plusBtn">
                    <a href="#" onclick="openPoplogout()"><img src="./img/bar.png" ></a>
                </div>
            </div> <!-- left 종료 디브 -->
            
            
            
            <div class="center">
                <form class="search" action="#">
                    <input id="searchBar" type="text">
                    <input id="searchBtn" type="submit" value="검색">
                </form>
                <div class="container">
                  <div class="proflieBox">
                  	<div><img id="setImg" src="${user2.mb_pic}"></div>
                    <div>
                    	<ul class="userSetText">
                    		 <li style="margin-top:36px;">${userinfo.get(0).mb_id}</li>
              				 <li class="userSetText_sums">
                  				<a href="#">리뷰 <%= a.size() %> </a>
                  				<a href="#">팔로우 4</a>
                 				 <a href="#">팔로잉 4</a>
              				</li>
              				<li>${userinfo.get(0).mb_name}</li>
              				<li>${userinfo.get(0).mb_profile}</li>
                    	</ul>
                    </div>
                  </div>
                  <div><hr id="proflie_bar"></div>
                  <div class="userReview">
                   <c:forEach var="i" begin="0" end="${userinfo.size()-1 }">     
                    <div>
                    <form name="pic1111" action="profileReplyCheck.do">
                    	 <input type="hidden" name="profile_myReview" value="${userinfo.get(i).rv_seq}">
                       	 <a href="javascript:openPopImg(`${userinfo.get(i).rv_pic1}`)" >
                         <img id="popup_review" src="${userinfo.get(i).rv_pic1}">
                        </a>
                    </form>    
                    </div>
                    
                  </c:forEach>
                  
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
                    <div>
                       <img src="#" id="profile_review">
						<P id ="reviewPtag"> ${userinfo.get(i).rv_content } </P>
                    </div>
                    <div class="main">
                        <div class="profile">
                            <div class="profilepic"> <a href="#"></a><img src="${user2.mb_pic }"></div>
                            <div class="comusername">
                                <div class="comname"> <a href="#"></a> ${userinfo.get(i).mb_id}</div>
                                <div class="userid">${userinfo.get(i).mb_nick}</div>
                            </div>
                        </div>
                        <div class="text">
                            <div class="comment">
                         	<c:forEach var="i" begin="1" end="3">
                                <div class="comProfilepic"><a href="#"></a><img src="${total.get(i).mb_pic }" style="width:60px;border-radius: 50%;"></div>
                                <div class="comments">
                                    <div class="comName"><a href="#">${total.get(i).mb_id }</a></div>
                                </div>
		                         <div class="comText" onclick="toggleEllipsis(this)">
            						<p>${total.get(i).rp_content}</p> 
            						            		
	    	                     </div>
                                <div class="like">
                                    <a href="javascript:;" class="likeIcon heart">
                                        <img src="img/like.png" alt="찜하기" width="20px">
                                    </a>
                                </div>
                         	</c:forEach>  
                            </div>
                            <div class="userComment">
                                <div class="myProfilepic"> <a href="#"><img src="${user2.mb_pic }" style="width:50px;border-radius: 50%;"></a></div>
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
        <div class="close">
            <a href="javascript:closePopPost()"><img src="img/x.png" class="m_header-banner-close" width="30px" height="30px"></a>
        </div>
        <div class="popup_box_post">
            <div style="height: 10px; width: 375px; float: top;">
            </div>
            <!--팝업 컨텐츠 영역-->
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
                        <form action="#">
                            <div class="commentPost">
                                <div class="picPost">
                                    <img src="img/KakaoTalk_20230223_114555783.png" width="200px" id="album">
                                    <div class="userNewImage" width="200px">
                                    </div>
                                    
                                    <p>사진과 동영상을 여기에 끌어다 놓으세요.</p>
                                   <div class="pick">
                                       <label for="files">폴더에서 선택</label>
                                       <input type="file" class="pickBtn" id="files">
                                   </div>
                                </div>
                                <div class="textArea">
                                    <div class="textAreaPic">
                                        <div class="newTextProfilePic">
                                        	<img src="${user2.mb_pic}" width="50px" style="border-radius: 50px">
                                        </div>
                                        <div class="newTextProfileId">
                                            ${user.mb_id}
                                        </div>
                                    </div>
                                    <div class="textAreaMain">
                                        <div class="textAreaMainPost">
                                        	<textarea placeholder="내용을 입력해주세요."></textarea>
                                        </div>
                                    </div>
                                    <div class="textAreaStar">
		                                    	<div class="star-rating space-x-4 mx-auto">
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
                        </form>
                            </div>
                    </div>
            </div>
        
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