//팝업 띄우기

function openPopImg(img_url) {
	var profile_review =document.getElementById("profile_review");
	profile_review.src =img_url;
    document.getElementById("popup_layer").style.display = "block";
}

function openPopMain(img_url) {
	var profile_review =document.getElementById("reviewPicArea");
	profile_review.src =img_url;
    document.getElementById("popup_layer").style.display = "block";

}
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
	var cnt = 0;
$(function heart(){
    var $likeBtn =$('.likeIcon');

        $likeBtn.click(function(){
        $(this).toggleClass('active');

        if($likeBtn.hasClass('active')){          
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
          	return cnt;
     })
})
var data11;
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
          cnt=1 ;
           data11 = $(this).parents().children('.input1').val();
                       console.log(data11)
           data22 = $(this).parents().children('.input2').val();
           console.log(data22)
                      
                       
         }else{
            $(this).find('i').removeClass('fas').addClass('far')
           $(this).find('img').attr({
              'src': 'img/saveWhite.png',
           })
         cnt= 0;
         }
     if(cnt===1){
     console.log(cnt); 
     	 $.ajax({
	      url: 'userReviewSave.do',
	      data: {
	        resSeq: data11,
	        rvSeq: data22
	      },
	      type: 'POST',
	      success: function() {
	        console.log("성공");
	        alert("리뷰를 보관하였습니다!")
	      },
	      error: function() {
	        console.log("리뷰저장통신실패");
	      }
	    })

	    }else if(cnt===0){
			
	 	    $.ajax({
	 	      url: 'userReviewCancel.do',
	 	      data: {
	 	        resSeq: a,
	 	        rvSeq: b
	 	      },
	 	      type: 'POST',
	 	      success: function() {
	 	        console.log("삭제성공");
	 	        alert("리뷰를 삭제하였습니다!")
	 	      },
	 	      error: function() {
	 	        console.log("리뷰삭제통신실패");
	       }
	     });
			
		}
     })
 
	
	    	         
	 }
)



//뭐냐파일변경
const fileInput = document.getElementById("files");

const handleFiles = (e) => {
  const selectedFile = [...fileInput.files];
  const fileReader = new FileReader();

  fileReader.readAsDataURL(selectedFile[0]);

  fileReader.onload = function () {
    document.getElementById("album").src = fileReader.result;
    const text = document.getElementById("pickPicArea");
    text.innerText = "";
    
    element.parentNode.removeChild(fileInput);
    
    const label = document.getElementById("label");
    element.parentNode.removeChild(label);
    
  };
};

fileInput.addEventListener("change", handleFiles);