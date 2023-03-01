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
    	<link rel="stylesheet" href="./css/newPostMakeCss.css">
    	<link rel="stylesheet" href="./css/newPostMakePopup.css">
    	<link rel="stylesheet" href="./css/recommend.css">
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
                        <a href="profileService.do"><img src="${user2.mb_pic }" id="getUserPic"></a>
                        <a class="icontext" href="profileService.do">프로필</a>
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
					<!-- 움직이는 추천창 -->
                    <div class="moveRecBox">
                        <div class="moveRecBox_top">
                            <img id="moveRecBox_topMarkerImg" src="./img/marker.png">
                            <p style="color: #5cb270;">전남대학교</p>
                        </div>
                        <div style="display:flex; justify-content: center;">
                        <div class="moveRecBox_unTop">
             
                            <div class="moveRecBox_main">
                               <div class="moveRecBox_main1 fade active">
                                <!-- 움직이는 추천리뷰1-->
                                <div class="moveRecBox_mainRec1">
                                    <!-- 추천리뷰1-left 사진-->
                                    <div class="mainRec1_img"><img src="${dao_rev.get(0).rv_pic1}"></div>

                                    <!-- 추천리뷰1-right 리뷰글( top-리뷰자 아이디,이름,프로필사진) / main-리뷰 내용(글) -->
                                    <div class="mainRec1_Box">
                                        <div class="recUserInfo">
                                            <!-- top -->
                                            <!-- 프로필 사진 -->
                                            <img id="recUserInfo_img" src="${review.get(0).mb_pic}">
                                            <!-- 아이디, 이름 -->
                                            <ul class="recUserInfo_info">
                                                <li><a id="recUserInfo_infoId" href="#">${dao_rev.get(0).mb_id}</a></li>
                                                <li style="font-size: 13px;">유저이름</li>
                                            </ul>
                                        </div>
                                        <div id="mainRec1_storeName"><p>${dao_rev.get(0).res_name}</p></div>
                                        <div id="mainRec1_content"><p>${dao_rev.get(0).rv_content}</p></div>
                                        <div id="mainRec1_tag"><p>${dao_rev.get(0).rv_hashtag}</p></div>
                                    </div>
                                </div>
                                </div>
                                
                                <c:forEach var="i" begin="1" end="3" >
                                <div class="moveRecBox_main1 fade">
                                	<!-- 움직이는 추천리뷰1-->
                                	<div class="moveRecBox_mainRec1">
                                    <!-- 추천리뷰1-left 사진-->
                                    <div class="mainRec1_img"><img src="${dao_rev.get(i).rv_pic1}"></div>

                                    <!-- 추천리뷰1-right 리뷰글( top-리뷰자 아이디,이름,프로필사진) / main-리뷰 내용(글) -->
                                    <div class="mainRec1_Box">
                                        <div class="recUserInfo">
                                            <!-- top -->
                                            <!-- 프로필 사진 -->
                                            <img id="recUserInfo_img" src="${dao_rev.get(i).mb_pic}">
                                            <!-- 아이디, 이름 -->
                                            <ul class="recUserInfo_info">
                                                <li><a id="recUserInfo_infoId" href="#">${dao_rev.get(i).md_id}</a></li>
                                                <li style="font-size: 13px;">유저이름</li>
                                            </ul>
                                        </div>
                                        <div id="mainRec1_storeName"><p>${dao_rev.get(i).res_name}</p></div>
                                        <div id="mainRec1_content"><p>${dao_rev.get(i).rv_content}</p></div>
                                        <div id="mainRec1_tag"><p>${dao_rev.get(i).rv_hashtag}</p></div>
                                    </div>
                                	</div>
                                </div>
                                </c:forEach>
                                
                            </div>
                            
                        </div>
                     </div>   

                   </div> <!-- 닫는디브 -->
                   
                   <!-- 반복되는 추천디브 - 한식 -->
                   <div class="koreanFood">
                        <p id="koreanFood_ment">한국인은 밥심! 든든한 한식 맛집 추천 : ${dao_rev.get(0).res_name}
                        </p>
                        <div class="koreanFoodimg_box">
                            <button id="left" class="button_icon"><img class="button_icon_left" src="./img/i_left.png"></button>
                           
                            <form name="food_rec" action="이동할 주소" method="POST">
                            <ul class="koreanFood_imgs">
                               <c:forEach var="i" begin="0" end="9" >
                                <li>
                                    <a type="hidden" onclick="document.forms['food_rec'].submit()" value="${result_kr.get(i).rv_seq}">
                                    <img class="japanesFood_img" src="${result_kr.get(i).rv_pic}"></a>
                                </li>
                                </c:forEach>                            
                            </ul>
                            </form>
                            <button id="right" class="button_icon"><img class="button_icon_right" src="./img/i_right.png"></button>
                        </div>
                   </div>
                   
                   <!-- 반복되는 추천디브 - 일식 -->
                   <div class="japanesFood">
                        <p id="japanesFood_ment">이자카야/술집</p>
                        <div class="japanesFoodimg_box">
                            <button id="left" class="button_icon"><img class="button_icon_left" src="./img/i_left.png"></button>
                            
                            <form name="food_rec" action="이동할 주소" method="POST">
                            <ul class="japanesFood_imgs">
                                <c:forEach var="i" begin="0" end="9" >
                                <li>
                                    <a href="#" type="hidden" onclick="document.forms['food_rec'].submit()" value="${result_jp.get(i).rv_seq}">
                                    <img class="japanesFood_img" src="${result_jp.get(i).rv_pic}"></a>
                                </li>
                                </c:forEach>    
                            </ul>
                            </form>
                            <button id="right" class="button_icon"><img class="button_icon_right" src="./img/i_right.png"></button>                           
                        </div>
                   </div>
                   
                   <!-- 반복되는 추천디브 - 중식 -->
                   <div class="chinaFood">
                        <p id="chinaFood_ment">아시안 음식</p>
                        <div class="chinaFoodimg_box">
                            <button id="left" class="button_icon"><img class="button_icon_left" src="./img/i_left.png"></button>
                            
                            <form name="food_rec" action="이동할 주소" method="POST">
                            <ul class="chinaFood_imgs">
                                <c:forEach var="i" begin="0" end="9" >
                                <li>
                                    <a href="#" type="hidden" onclick="document.forms['food_rec'].submit()" value="${result_ch.get(i).rv_seq}">
                                    <img class="chinaFood_img" src="${result_ch.get(i).rv_pic}"></a>
                                </li>
                                </c:forEach>    
                            </ul>
                            </form>
                            <button id="right" class="button_icon"><img class="button_icon_right" src="./img/i_right.png"></button>                           
                        </div>
                   </div>
                  
                   <!-- 반복되는 추천디브 - 카페 -->
                   <div class="cafeFood">
                        <p id="cafeFood_ment">카페</p>
                        <div class="cafeFoodimg_box">
                            <button id="left" class="button_icon"><img class="button_icon_left" src="./img/i_left.png"></button>
                            
                            <form name="food_rec" action="이동할 주소" method="POST">
                            <ul class="cafeFood_imgs">
                                <c:forEach var="i" begin="0" end="9" >
                                <li>
                                    <a href="#" type="hidden" onclick="document.forms['food_rec'].submit()" value="${result_cf.get(i).rv_seq}">
                                    <img class="cafeFood_img" src="${result_cf.get(i).rv_pic}"></a>
                                </li>
                                </c:forEach>    
                            </ul>
                            </form>
                            <button id="right" class="button_icon"><img class="button_icon_right" src="./img/i_right.png"></button>
                        </div>
                   </div>
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
                                    	<input type="text" name="userStar" placeholder="평점">
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



    </body>
    
<script src="./js/recommendPopup.js"></script>
<script src="./js/recommend.js"></script>
    
    
    
    
</html>