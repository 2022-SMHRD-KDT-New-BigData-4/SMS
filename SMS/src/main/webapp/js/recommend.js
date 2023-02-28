/**
 움직이는 추천 
 */
$(document).ready(function () {
	$(".moveRecBox_main1").not(".active").hide(); //화면 로딩 후 첫번째 div를 제외한 나머지 숨김
	
	setInterval(nextSlide, 4000); //4초(4000)마다 다음 슬라이드로 넘어감
});

//이전 슬라이드
function prevSlide() {
	$(".moveRecBox_main1").hide(); //모든 div 숨김
	var allSlide = $(".moveRecBox_main1"); //모든 div 객체를 변수에 저장
	var currentIndex = 0; //현재 나타난 슬라이드의 인덱스 변수
	
	//반복문으로 현재 active클래스를 가진 div를 찾아 index 저장
	$(".moveRecBox_main1").each(function(index,item){ 
		if($(this).hasClass("active")) {
			currentIndex = index;
		}
        
	});
	
	//새롭게 나타낼 div의 index
	var newIndex = 0;
    
	if(currentIndex <= 0) {
		//현재 슬라이드의 index가 0인 경우 마지막 슬라이드로 보냄(무한반복)
		newIndex = allSlide.length-1;
	} else {
		//현재 슬라이드의 index에서 한 칸 만큼 뒤로 간 index 지정
		newIndex = currentIndex-1;
	}

	//모든 div에서 active 클래스 제거
	$(".moveRecBox_main1").removeClass("active");
    
	//새롭게 지정한 index번째 슬라이드에 active 클래스 부여 후 show()
	$(".moveRecBox_main1").eq(newIndex).addClass("active");
	$(".moveRecBox_main1").eq(newIndex).show();

}

//다음 슬라이드
function nextSlide() {
	$(".moveRecBox_main1").hide();
	var allSlide = $(".moveRecBox_main1");
	var currentIndex = 0;
	
	$(".moveRecBox_main1").each(function(index,item){
		if($(this).hasClass("active")) {
			currentIndex = index;
		}
        
	});
	
	var newIndex = 0;
	
	if(currentIndex >= allSlide.length-1) {
		//현재 슬라이드 index가 마지막 순서면 0번째로 보냄(무한반복)
		newIndex = 0;
	} else {
		//현재 슬라이드의 index에서 한 칸 만큼 앞으로 간 index 지정
		newIndex = currentIndex+1;
	}

	$(".moveRecBox_main1").removeClass("active");
	$(".moveRecBox_main1").eq(newIndex).addClass("active");
	$(".moveRecBox_main1").eq(newIndex).show();
	
}




/** 한식 */
const carousel = document.querySelector(".koreanFood_imgs");
firstImg = carousel.querySelectorAll("img")[0];
arrowIcons = document.querySelectorAll(".koreanFoodimg_box button");

let isDragStart = false,prevPageX,preveScrollLeft;
let firstImgWidth = firstImg.clientWidth + 10;

arrowIcons.forEach(button => {
    button.addEventListener("click",()=>{
        carousel.scrollLeft += button.id == "left" ? -firstImgWidth : firstImgWidth;
    })
})

const dragStart = (e) => {
    isDragStart = true;
    prevPageX=e.pageX;
    preveScrollLeft=carousel.scrollLeft;
}

const dragging = (e) => {
    if(!isDragStart) return;
    e.preventDefault();
    let positionDiff = e.pageX - prevPageX
    carousel.scrollLeft = e.preveScrollLeft-positionDiff;
}

const dragStop = () => {
    isDragStart = false;
}
carousel.addEventListener("mousedown",dragStart);
carousel.addEventListener("mousemove",dragging);
carousel.addEventListener("mouseup",dragStop);

/** 일식 */
const carousel2 = document.querySelector(".japanesFood_imgs");
firstImg = carousel2.querySelectorAll("img")[0];
arrowIcons = document.querySelectorAll(".japanesFoodimg_box button");

let isDragStart2 = false,prevPageX2,preveScrollLeft2;
let firstImgWidth2 = firstImg.clientWidth + 10;

arrowIcons.forEach(button => {
    button.addEventListener("click",()=>{
        carousel2.scrollLeft += button.id == "left" ? -firstImgWidth : firstImgWidth;
    })
})

const dragStart2 = (e) => {
    isDragStart = true;
    prevPageX=e.pageX;
    preveScrollLeft=carousel2.scrollLeft;
}

const dragging2 = (e) => {
    if(!isDragStart) return;
    e.preventDefault();
    let positionDiff = e.pageX - prevPageX
    carousel2.scrollLeft = e.preveScrollLeft-positionDiff;
}

const dragStop2 = () => {
    isDragStart = false;
}
carousel2.addEventListener("mousedown",dragStart2);
carousel2.addEventListener("mousemove",dragging2);
carousel2.addEventListener("mouseup",dragStop2);

/** 카페 */
const carousel3 = document.querySelector(".cafeFood_imgs");
firstImg = carousel3.querySelectorAll("img")[0];
arrowIcons = document.querySelectorAll(".cafeFoodimg_box button");

let isDragStart3 = false,prevPageX3,preveScrollLeft3;
let firstImgWidth3 = firstImg.clientWidth + 10;

arrowIcons.forEach(button => {
    button.addEventListener("click",()=>{
        carousel3.scrollLeft += button.id == "left" ? -firstImgWidth : firstImgWidth;
    })
})

const dragStart3 = (e) => {
    isDragStart = true;
    prevPageX=e.pageX;
    preveScrollLeft=carousel3.scrollLeft;
}

const dragging3 = (e) => {
    if(!isDragStart) return;
    e.preventDefault();
    let positionDiff = e.pageX - prevPageX
    carousel3.scrollLeft = e.preveScrollLeft-positionDiff;
}

const dragStop3 = () => {
    isDragStart = false;
}
carousel3.addEventListener("mousedown",dragStart3);
carousel3.addEventListener("mousemove",dragging3);
carousel3.addEventListener("mouseup",dragStop3);

/** 중식 */
const carousel4 = document.querySelector(".chinaFood_imgs");
firstImg = carousel4.querySelectorAll("img")[0];
arrowIcons = document.querySelectorAll(".chinaFoodimg_box button");

let isDragStart4 = false,prevPageX4,preveScrollLeft4;
let firstImgWidth4 = firstImg.clientWidth + 10;

arrowIcons.forEach(button => {
    button.addEventListener("click",()=>{
        carousel4.scrollLeft += button.id == "left" ? -firstImgWidth : firstImgWidth;
    })
})

const dragStart4 = (e) => {
    isDragStart = true;
    prevPageX=e.pageX;
    preveScrollLeft=carousel4.scrollLeft;
}

const dragging4 = (e) => {
    if(!isDragStart) return;
    e.preventDefault();
    let positionDiff = e.pageX - prevPageX
    carousel4.scrollLeft = e.preveScrollLeft-positionDiff;
}

const dragStop4 = () => {
    isDragStart = false;
}
carousel4.addEventListener("mousedown",dragStart4);
carousel4.addEventListener("mousemove",dragging4);
carousel4.addEventListener("mouseup",dragStop4);