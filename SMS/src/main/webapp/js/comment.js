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

//팝업 띄우기
function openPoplogout() {
  document.getElementById("popup_layer_logout").style.display = "block";
  document.getElementsByClassName("popup_overlay_logout")[0].style.display = "block";
  console.log("성공");
}

function closePopuplogout() {
  document.getElementById("popup_layer_logout").style.display = "none";
  document.getElementsByClassName("popup_overlay_logout")[0].style.display = "none";
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
              'src': 'img/saveWhite.png'
           })
         }
     })
})



//뭐냐파일변경
const fileInput = document.getElementById("file");

const handleFiles = (e) => {
  const selectedFile = [...fileInput.files];
  const fileReader = new FileReader();

  fileReader.readAsDataURL(selectedFile[0]);

  fileReader.onload = function () {
    document.getElementById("album").src = fileReader.result;
  };
};

fileInput.addEventListener("change", handleFiles);