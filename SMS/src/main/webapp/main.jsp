<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="./css/main.css">
        <link rel="stylesheet" href="./css/reset.css">
    </head>
    <body>
        <div class="container1">
            <div class="left">
                <h1 class="logo"><a id="logoText" href="#">FOODIER</a></h1>
                <ul class="iconBtn">
                    <li>
                        <a><img src="./img/home.png"></a>
                        <a class="icontext" href="#">홈</a>
                    </li>
                    <li>
                        <a><img src="./img/rec.png"></a>
                        <a class="icontext" href="#">추천</a>
                    </li>
                    <li>
                        <a><img src="./img/meal.png"></a>
                        <a class="icontext" href="#">학식</a>
                    </li>
                    <li>
                        <a><img src="./img/save.png"></a>
                        <a class="icontext" href="#">보관</a>
                    </li>
                    <li>
                        <a><img src="./img/plus.png"></a>
                        <a class="icontext" href="#">만들기</a>
                    </li>
                    <li>
                        <a></a><img src="#">
                        <a class="icontext" href="#">프로필</a>
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
                   <div class="postBox"> <!-- postBox클래스 반복-->
                    <div class="post">
                        <div class="postTop">
                            <a href="#"><img src="./img/ex_proflie.jpg"></a>
                            <ul class="name">
                                <li><a href="#">dpdlclee</a></li>
                                <li><a href="#">#동명동</a></li>
                            </ul>
                        </div>
                        <div id="postCenter"><img src="./img/ex_post.jpg"></div>
                        <div id="postBottom">
                            <ul class="pBlist">
                                <li class="one">
                                    <a><img src="./img/like.png"></a>
                                    <a><img src="./img/comment.png"></a>
                                    <a><img src="./img/save.png"></a>
                                </li>
                                <li class="two">
                                    <p>좋아요 00개</p>
                                </li>
                                <li class="three">
                                    <a href="a">사용자ID</a>
                                </li>
                                <li class="four">
                                    <p>내용 블라블라블라블라</p>
                                </li>
                            </ul>
                        </div>
                    </div>
                   </div> <!--postBox 닫는 디브-->
                </div>
            </div>
            <div class="right">
                    <div class="user">
                        <a href="#"><img id="userImg" src="./img/ex_proflie.jpg"></a>
                        <div class="userId">
                            <a href="#">사용자아이디</a>
                            <p>사용자이름</p>
                        </div>

                    </div>
                    <div>
                        <p>회원님을 위한 추천</p>
                        <ul class="recList">
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
                            <li class="rec">
                            <a><img class="rec_img" src="#"></a>
                                
                            <div>
                                <a href="#">추천ID</a>
                                <p>추천인 이름</p> 
                            </div>
                            </li>    
                        </ul>
                        
                    </div>
                    
                </ul>
            </div>
        </div>
        
    </body>
</html>