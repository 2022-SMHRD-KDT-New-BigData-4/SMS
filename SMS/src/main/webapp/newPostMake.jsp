<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./css/newPostMakeCss.css">
    <link rel="stylesheet" href="./css/commentPopup.css">
    <script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
</head>
<body>

    <div class="popup_layer" id="popup_layer">
        <div class="close">
            <a href="javascript:closePop();"><img src="img/x.png" class="m_header-banner-close" width="30px" height="30px"></a>
        </div>
        <div class="popup_box">
            <div style="height: 10px; width: 375px; float: top;">
            </div>
            <!--팝업 컨텐츠 영역-->
            <div class="upload">
                    <div class="main">
                        <div class="profile">
                            <div class="username">
                                <div class="name">새 게시물 만들기</div>
                            </div>
                        </div>
                        <div class="text">
                            <div class="comment">
                                <div class="pic">
                                    <img src="img/KakaoTalk_20230223_114555783.png" width="200px" id="album">
                                    <p>사진과 동영상을 여기에 끌어다 놓으세요.</p>
                                </div>
                                <div class="pick">
                                    <label for="files">폴더에서 선택</label>
                                    <input type="file" class="pickBtn" id="files">
                                </div>
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
	location.href="main.jsp";
    document.getElementById("popup_layer").style.display = "none";
}

documents.getElementByClassName

</script>

</html>