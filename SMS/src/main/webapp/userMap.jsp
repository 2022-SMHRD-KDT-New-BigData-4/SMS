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
    <link rel="stylesheet" href="./css/commentPopupMaps.css">
    <link rel="stylesheet" href="./css/newPostMakePopupMaps.css">
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
            	<c:forEach var="i" begin="${searchresult.size()-1}" end="3">
	            	<div class="saveReview">
	            		<ul class="saveReviewBox">
	            			<li class="saveReviewBox_1">
	            			<form action="#" name="reviewPicData">
	            				<input type="hidden" name="reviewNum" value="${searchresult.mb_id}">
	            			</form>
	            				<a href="#" onclick="document.forms['reviewPicData'].submit()"><img src="${searchresult.get(i).res_pic1}"></a>
			            			<div>
			            				<a href="#" onclick="document.forms['reviewPicData'].submit()">id</a>
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
	            				<a href="javascript:heart()" class="likeIcon heart"><img src="./img/like.png"></a>
	            				<a href="javascript:openPop()"><img src="./img/comment.png"></a>
	            				<a href="javascript:saveMap()" class="saveIcon save"><img src="./img/saveBlack.png"></a>
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
				</c:forEach>
            </div>
            <!-- 3.map  -->
            <div class="mapBox">
				<!-- 지도가 들어가는 부분 -->
				<div id="map" style="height:940px;"></div>
            </div>

        </div>


<!-- ----------댓글, 하트 --------------------- -->

    <div class="popup_layer" id="popup_layer" style="display: none;">
        <div class="closeCom">
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
        </form>
            <!--팝업 버튼 영역-->
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
</body>

<script src="./js/userMap.js"></script>
<script src="./js/MapsBtn.js"></script>


</html>