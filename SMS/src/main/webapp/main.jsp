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
                        <a href="javascript:openPopPost()"><img src="./img/plus.png"></a>
                        <a href="javascript:openPopPost()" class="icontext" href="#">만들기</a>
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
                                <li><a href="#">${review.mb_id}</a></li>
                                <li><a href="#">#동명동</a></li>
                            </ul>
                        </div>
                        <div id="postCenter"><img src="./img/ex_post.jpg"></div>
                        <div id="postBottom">
                            <ul class="pBlist">
                                <li class="one">
                                    <a><img src="./img/like.png"></a>
                                    <a href="javascript:openPop()" ><img src="./img/comment.png"></a>
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
                            <a href="#">${user.userId}</a>
                            <p>${user.userName}</p>
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
    
<script>
//팝업 띄우기
function openPop() {
    document.getElementById("popup_layer").style.display = "block";

}

//팝업 닫기
function closePop() {
    document.getElementById("popup_layer").style.display = "none";
}

//팝업 띄우기
function openPopPost() {
	location.href="newPostMake.jsp";
    document.getElementById("popup_layer").style.display = "block";

}

//팝업 닫기
function closePopPost() {
    document.getElementById("popup_layer").style.display = "none";
}
//좋아요 하트 변경
$(function(){
    var $likeBtn =$('.likeIcon');

        $likeBtn.click(function(){
        $likeBtn.toggleClass('active');

        if($likeBtn.hasClass('active')){          
           $(this).find('img').attr({
              'src': 'img/hearts.png'
                });
          
          
         }else{
            $(this).find('i').removeClass('fas').addClass('far')
           $(this).find('img').attr({
              'src': 'img/like.png'
           })
         }
     })
})
</script>
    
    
    
    
</html>