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
	var cnt = 0;
$(function heart(){
    var $likeBtn =$('.likeIcon');

        $likeBtn.click(function(){
        $(this).toggleClass('active');

        if($likeBtn.hasClass('active')==(cnt=0)){          
           $(this).find('img').attr({
              'src': 'img/hearts.png',
                });
              cnt= 1;
          
         }else{
            $(this).find('i').removeClass('fas').addClass('far')
           $(this).find('img').attr({
              'src': 'img/like.png',
           })
           cnt= 0;
         }
     console.log(cnt); 
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
          cnt= 1;
          
         }else{
            $(this).find('i').removeClass('fas').addClass('far')
           $(this).find('img').attr({
              'src': 'img/saveWhite.png',
           })
         cnt= 0;
         }
     console.log(cnt); 
     })
})



//보관함 변경
$(function saveMap(){
    var $saveBtn =$('.saveIcon');

        $saveBtn.on('click', function(e){
		e.preventDefault();
        $(this).toggleClass('active');

        if($saveBtn.hasClass('active')){          
           $(this).find('img').attr({
              'src': './img/saveWhite.png'
                });
          
          
         }else{
            $(this).find('i').removeClass('fas').addClass('far')
           $(this).find('img').attr({
              'src': './img/saveBlack.png'
           })
         }
     })
})