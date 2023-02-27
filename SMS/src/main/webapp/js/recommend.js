/**
 * 
 */
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