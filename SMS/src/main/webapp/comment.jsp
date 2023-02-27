<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./css/commentCss.css">
    <link rel="stylesheet" href="./css/commentPopup.css">
    <script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
</head>
<body>
    
    <a href="javascript:openPop()">
        <div>
        	<!-- 댓글 작성에서 이어지게 고치기 -->
            팝업오픈!
        </div>
    </a>

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
                                <form action="ReplyService.do">
                                    <input type="text" id="comInput" placeholder="댓글달기" name="commentText">
                                    <input type="submit" id="submit" value="게시">
                                </form>
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

//좋아요 하트 변경
$(function(){
    var $likeBtn =$('.likeIcon');

        $likeBtn.click(function(){
        $(this).toggleClass('active');

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
$("#submit").click(function(){
    alert("클릭됨1");
});
</script>

</html>