<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/main.css" />
</head>
<body>
	<div class="mainbox">
        <div class="box1">
            <div class="box1_1">
                <a id="logotext" href="#">Foodier</a>
            </div>
            <div class="box1_2">
                <div class="mainIcon">
                    <img src="./img/home.png" class="iconimg">
                    <a class="iconText" href="#">홈</a>
                </div>
                <div class="mainIcon">
                    <img src="./img/search.png" class="iconimg">
                    <a class="iconText" href="#">추천</a>
                </div>
                <div class="mainIcon">
                    <img src="./img/free-icon-font-globe-3917538.png" class="iconimg">
                    <a class="iconText" href="#">검색</a>
                </div>
                <div class="mainIcon">
                    <img src="./img/meal.png" class="iconimg">
                    <a class="iconText" href="#">학식</a>
                </div>
                <div class="mainIcon">
                    <img src="./img/plus.png" class="iconimg">
                    <a class="iconText" href="#">만들기</a>
                </div>
                <div class="mainIcon">
                    <img src="#" class="iconimg">
                    <a class="iconText" href="#">프로필</a>
                </div>
            </div>
            <div class="box1_3">
                <img id="plus" src="./img/barC.png">
            </div>
        </div>

        <div class="box2">
            <!-- box2-1 20% -->
            <div class="search">
                <div class="search_1">
                    <input id="serInput" type="text" value="검색어를 입력하세요">
                    <input id="serBtn" type="submit" value="검색">
                </div>
            </div>
            <!-- box2-2 80% -->
            <div class="box2Main">
                <div class="postitem">
                    <div class="postUser">
                        <div id="userImg"></div> <!-- 이미지 태그로 변경할 예정-->
                        <div class="userId">
                            <div><a>id</a></div>
                            <div><p>username</p></div>
                        </div>
                    </div>
                    <div id="postImg">
                        <img src="#">
                    </div>
                    <div class="postText">
                        <div>
                            <img src="./img/like.png" id="like">
                            <img src="./img/comment.png" id="comment">
                            <img src="./img/save.png" id="save">
                        </div>
                        <div></div>
                    </div>
                </div>
            </div>
        </div>

        <div class="box3">
            <div class="box3_1">
                <div id="profile"> 
                    <div id="profile_img"></div> <!--img태그로 변경예정-->
                    <div id="ex">
                        <a href="#">id</a>
                        <P>name</P>
                    </div>
                </div>
            </div>

            <div class="box3_2">
               <div class="recom">
                <p>회원님을 위한 추천</p>
                <div style="background-color: red;"></div>
                <div style="background-color: orange"></div>
                <div style="background-color: yellow"></div>
                <div style="background-color: green"></div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>