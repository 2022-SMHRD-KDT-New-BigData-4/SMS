<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./css/newPostMakePopup.css">
    <link rel="stylesheet" href="./css/newPostMakeCss.css">
    <script src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
</head>
<body>

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
                    <div class="main">
                        <div class="profilePost">
                            <div class="username">
                                <div class="namePost">새 게시물 만들기</div>
                            </div>
                        </div>
                            <div class="commentPost">
                                <div class="picPost">
                                    <img src="img/KakaoTalk_20230223_114555783.png" width="200px" id="album">
                                    <div class="userNewImage" width="200px">
                                    </div>
                                    
                                    <p>사진과 동영상을 여기에 끌어다 놓으세요.</p>
                                </div>
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
                                            문구 입력...
                                        </div>
                                    </div>
                                    <div class="textAreaStar">평점</div>
                                    <div class="textAreaRoc">위치</div>
                                    <div class="textAreaH">해시태그</div>
                                </div>
                        </div>
                    </div>
            </div>
        
            <!--팝업 버튼 영역-->
        </div>
      </div>






</body>

<script src="./js/comment.js"></script>

</html>