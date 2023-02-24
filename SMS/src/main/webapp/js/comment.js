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