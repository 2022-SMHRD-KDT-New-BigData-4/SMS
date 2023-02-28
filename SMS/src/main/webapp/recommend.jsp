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
    	<link rel="stylesheet" href="./css/recommend.css">
    	<script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
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
                        <a><img src="#"></a>
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
                                    <div class="mainRec1_img"><img src="./img/ex_post.jpg"></div>

                                    <!-- 추천리뷰1-right 리뷰글( top-리뷰자 아이디,이름,프로필사진) / main-리뷰 내용(글) -->
                                    <div class="mainRec1_Box">
                                        <div class="recUserInfo">
                                            <!-- top -->
                                            <!-- 프로필 사진 -->
                                            <img id="recUserInfo_img" src="#">
                                            <!-- 아이디, 이름 -->
                                            <ul class="recUserInfo_info">
                                                <li><a id="recUserInfo_infoId" href="#">유저아이디</a></li>
                                                <li style="font-size: 13px;">유저이름</li>
                                            </ul>
                                        </div>
                                        <div id="mainRec1_storeName"><p>가게명</p></div>
                                        <div id="mainRec1_content"><p>내용 블라블라~~</p></div>
                                        <div id="mainRec1_tag"><p>#게시물 태그 #게시물 태그 #게시물 태그</p></div>
                                    </div>
                                </div>
                                </div>
                                
                                <div class="moveRecBox_main1 fade">
                                	<!-- 움직이는 추천리뷰1-->
                                	<div class="moveRecBox_mainRec1">
                                    <!-- 추천리뷰1-left 사진-->
                                    <div class="mainRec1_img"><img src="#"></div>

                                    <!-- 추천리뷰1-right 리뷰글( top-리뷰자 아이디,이름,프로필사진) / main-리뷰 내용(글) -->
                                    <div class="mainRec1_Box">
                                        <div class="recUserInfo">
                                            <!-- top -->
                                            <!-- 프로필 사진 -->
                                            <img id="recUserInfo_img" src="#">
                                            <!-- 아이디, 이름 -->
                                            <ul class="recUserInfo_info">
                                                <li><a id="recUserInfo_infoId" href="#">유저아이디</a></li>
                                                <li style="font-size: 13px;">유저이름</li>
                                            </ul>
                                        </div>
                                        <div id="mainRec1_storeName"><p>가게명</p></div>
                                        <div id="mainRec1_content"><p>내용 블라블라~~</p></div>
                                        <div id="mainRec1_tag"><p>#게시물 태그 #게시물 태그 #게시물 태그</p></div>
                                    </div>
                                	</div>
                                </div>
                            </div>
                            
                        </div>
                     </div>   

                   </div> <!-- 닫는디브 -->
                   
                   <!-- 반복되는 추천디브 - 한식 -->
                   <div class="koreanFood">
                        <p id="koreanFood_ment">한국인은 밥심! 든든한 한식 맛집 추천</p>
                        <div class="koreanFoodimg_box">
                            <button id="left" class="button_icon"><img class="button_icon_left" src="./img/i_left.png"></button>
                            <ul class="koreanFood_imgs">
                                <li>
                                    <a href="#">1<img class="koreanFood_img" src="#"></a>
                                </li>
                                <li>
                                    <a href="#">2<img class="koreanFood_img" src="#"></a>
                                </li>
                                <li>
                                    <a href="#">3<img class="koreanFood_img" src="#"></a>
                                </li>
                                <li>
                                    <a href="#">4<img class="koreanFood_img" src="#"></a>
                                </li>
                                <li>
                                    <a href="#">5<img class="koreanFood_img" src="#"></a>
                                </li>
                                <li>
                                    <a href="#">6<img class="koreanFood_img" src="#"></a>
                                </li>
                                <li>
                                    <a href="#">7<img class="koreanFood_img" src="#"></a>
                                </li>
                                <li>
                                    <a href="#">8<img class="koreanFood_img" src="#"></a>
                                </li>
                                <li>
                                    <a href="#">9<img class="koreanFood_img" src="#"></a>
                                </li>
                                <li>
                                    <a href="#">10<img class="koreanFood_img" src="#"></a>
                                </li>
                                
                            </ul>
                            <button id="right" class="button_icon"><img class="button_icon_right" src="./img/i_right.png"></button>
                        </div>
                   </div>
                   
                   <!-- 반복되는 추천디브 - 중식+일식 -->
                   <div class="japanesFood">
                        <p id="japanesFood_ment">한국인은 밥심! 든든한 한식 맛집 추천</p>
                        <div class="japanesFoodimg_box">
                            <button id="left" class="button_icon"><img class="button_icon_left" src="./img/i_left.png"></button>
                            <ul class="japanesFood_imgs">
                                <li>
                                    <a href="#">1<img class="japanesFood_img" src="#"></a>
                                </li>
                                <li>
                                    <a href="#">2<img class="japanesFood_img" src="#"></a>
                                </li>
                                <li>
                                    <a href="#">3<img class="japanesFood_img" src="#"></a>
                                </li>
                                <li>
                                    <a href="#">4<img class="japanesFood_img" src="#"></a>
                                </li>
                                <li>
                                    <a href="#">5<img class="japanesFood_img" src="#"></a>
                                </li>
                                <li>
                                    <a href="#">6<img class="japanesFood_img" src="#"></a>
                                </li>
                                <li>
                                    <a href="#">7<img class="japanesFood_img" src="#"></a>
                                </li>
                                <li>
                                    <a href="#">8<img class="japanesFood_img" src="#"></a>
                                </li>
                                <li>
                                    <a href="#">9<img class="japanesFood_img" src="#"></a>
                                </li>
                                <li>
                                    <a href="#">10<img class="japanesFood_img" src="#"></a>
                                </li>
                                
                            </ul>
                            <button id="right" class="button_icon"><img class="button_icon_right" src="./img/i_right.png"></button>
                        </div>
                   </div>
                   
                   <!-- 반복되는 추천디브 - 카페 -->
                   <div class="cafeFood">
                        <p id="cafeFood_ment">한국인은 밥심! 든든한 한식 맛집 추천</p>
                        <div class="cafeFoodimg_box">
                            <button id="left" class="button_icon"><img class="button_icon_left" src="./img/i_left.png"></button>
                            <ul class="cafeFood_imgs">
                                <li>
                                    <a href="#">1<img class="cafeFood_img" src="#"></a>
                                </li>
                                <li>
                                    <a href="#">2<img class="cafeFood_img" src="#"></a>
                                </li>
                                <li>
                                    <a href="#">3<img class="cafeFood_img" src="#"></a>
                                </li>
                                <li>
                                    <a href="#">4<img class="cafeFood_img" src="#"></a>
                                </li>
                                <li>
                                    <a href="#">5<img class="cafeFood_img" src="#"></a>
                                </li>
                                <li>
                                    <a href="#">6<img class="cafeFood_img" src="#"></a>
                                </li>
                                <li>
                                    <a href="#">7<img class="cafeFood_img" src="#"></a>
                                </li>
                                <li>
                                    <a href="#">8<img class="cafeFood_img" src="#"></a>
                                </li>
                                <li>
                                    <a href="#">9<img class="cafeFood_img" src="#"></a>
                                </li>
                                <li>
                                    <a href="#">10<img class="cafeFood_img" src="#"></a>
                                </li>
                                
                            </ul>
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
<script src="./js/recommend.js"></script>
    
    
    
    
</html>