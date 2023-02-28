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
    document.getElementById("popup_layer_post").style.display = "block";
    console.log("성공");

}

//팝업 닫기
function closePopPost() {
    document.getElementById("popup_layer_post").style.display = "none";
}

//좋아요 하트 변경
$(function heart(){
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

//보관함 변경
$(function save(){
    var $saveBtn =$('.saveIcon');

        $saveBtn.on('click', function(e){
		e.preventDefault();
        $(this).toggleClass('active');

        if($saveBtn.hasClass('active')){          
           $(this).find('img').attr({
              'src': 'img/saveBlack.png',
                });
          
          
         }else{
            $(this).find('i').removeClass('fas').addClass('far')
           $(this).find('img').attr({
              'src': 'img/save.png'
           })
         }
     })
})