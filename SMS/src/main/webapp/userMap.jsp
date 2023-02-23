<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>마커에 클릭 이벤트 등록하기</title>
    <style>
        .overlaybox {position:relative;width:360px;height:350px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/box_movie.png') no-repeat;padding:10px 10px;}
        .overlaybox div, ul {overflow:hidden;margin:0;padding:0;}
        .overlaybox li {list-style: none;}
        .overlaybox .boxtitle {color:#fff; font-size:16px;font-weight:bold;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png') no-repeat right 120px center;margin-bottom:8px;}
        .overlaybox .first {position:relative;width:247px;height:136px;background: url('https://d12zq4w4guyljn.cloudfront.net/750_750_20200726060017037_photo_314372b42282.jpg') no-repeat;margin-bottom:8px;margin-top:8px;border-radius: 5px;}
        .first .text {color:#fff;font-weight:bold;}
        .first .triangle {position:absolute;width:48px;height:48px;top:0;left:0;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/triangle.png') no-repeat; padding:6px;font-size:18px;}
        .first .movietitle {position:absolute;width:100%;bottom:0;background:rgba(0,0,0,0.4);padding:7px 15px;font-size:14px;}
        .overlaybox ul {width:247px;}
        .overlaybox li {position:relative;margin-bottom:2px;background:#2b2d36;padding:5px 10px;color:#aaabaf;line-height: 1;}
        .overlaybox li span {display:inline-block;}
        .overlaybox li .number {font-size:16px;font-weight:bold;}
        .overlaybox li .title {font-size:13px;}
        .overlaybox ul .arrow {position:absolute;margin-top:8px;right:25px;width:5px;height:3px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/updown.png') no-repeat;} 
        .overlaybox li .up {background-position:0 -40px;}
        .overlaybox li .down {background-position:0 -60px;}
        .overlaybox li .count {position:absolute;margin-top:5px;right:15px;font-size:10px;}
        .overlaybox li:hover {color:#fff;background:#d24545;}
        .overlaybox li:hover .up {background-position:0 0px;}
        .overlaybox li:hover .down {background-position:0 -20px;}
        .info .close {
            position: fixed;
            top: 10px;
            right: 10px;
            color: #888;width: 17px;
            height: 17px;
            background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');
        }
        .info .close:hover {cursor: pointer;}
         #close{
          margin-left:90px;
        } 
        #map{  border: 1px solid black; 
        position: fixed;
            top:0px;
            right:0px;
        margin-right:10px;
        margin-top:10px;
        margin-left:100px;
        width:60%;
        height:500px;
        }   
        #review{
            border: 1px solid black;
            height:500px;
            width:37%;
        }
        </style>    
</head>
<body>
    <!-- 임시 리뷰칸 div -->
<div id="review"></div>
    <div id="map"></div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ad32e4cc626799cc0ad5db80f46f316a"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        // 북구청앞 좌표 고정
        center: new kakao.maps.LatLng(35.173956643954675, 126.9191938589476), // 지도의 중심좌표
        level: 5 // 지도의 확대 레벨
    };

// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
var zoomControl = new kakao.maps.ZoomControl();
map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
// -----------지도or 줌컨트롤--------------------------------------

// 마커를 표시할 위치와 title 객체 배열입니다
// 이후 리뷰에 저장된 주소로 객체 생성
var positions = [
    {
        title: '스타벅스 전남대', 
        latlng: new kakao.maps.LatLng(35.1747707, 126.914430)
        // 마커 좌표로 가게 추가
    },
    {
        title: '투썸 전남대', 
        latlng: new kakao.maps.LatLng(35.1751410, 126.915340)
        // 마커 좌표로 가게 추가
    },
    {
        title: '시작 스터디카페', 
        latlng: new kakao.maps.LatLng(35.1774862, 126.917885)
        // 마커 좌표로 가게 추가
    }
];

// 마커 이미지의 이미지 주소입니다
var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
    
for (var i = 0; i < positions.length; i ++) {
    
    // 마커 이미지의 이미지 크기 입니다
    var imageSize = new kakao.maps.Size(24, 35); 
    
    // 마커 이미지를 생성합니다    
    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
    
    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: positions[i].latlng, // 마커를 표시할 위치
        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
        image : markerImage // 마커 이미지 
    });
}
// ------------------------------오버레이 시작 ---------------------
// 커스텀 오버레이에 표시할 내용입니다     
// HTML 문자열 또는 Dom Element 입니다 

var content = '<div class="overlaybox">' +
    '    <span class="boxtitle">스타벅스 전남대'+
    '    <span class="close" id="close" onclick="closeOverlay()" title="닫기">닫기</span>'+
    '    </span>'+
    '    <div class="first">' +
    '    </div>' +
    '    <ul>' +
    '        <li class="up">' +
    '            <span class="number">오픈시간</span>' +
    '            <span class="title">09:00</span>' +
    '            <span class="arrow up"></span>' +
    '            <span class="count"></span>' +
    '        </li>' +
    '        <li>' +
    '            <span class="number">마감시간</span>' +
    '            <span class="title">17:30</span>' +
    '            <span class="arrow up"></span>' +
    '            <span class="count"></span>' +
    '        </li>' +
    '        <li>' +
    '            <span class="number">위치</span>' +
    '            <span class="title">광주 북구 호동로 65</span>' +
    '            <span class="arrow up"></span>' +
    '            <span class="count"></span>' +
    '        </li>' +
    '        <li>' +
    '            <span class="number">리뷰 수</span>' +
    '            <span class="title">7</span>' +
    '            <span class="arrow down"></span>' +
    '            <span class="count"></span>' +
    '        </li>' +
    '    </ul>' +
    '</div>';
// 커스텀 오버레이가 표시될 위치입니다 >> 연결된주소값으로 수정
var position = new kakao.maps.LatLng(35.1774862, 126.917885);

// 커스텀 오버레이를 생성합니다
var customOverlay = new kakao.maps.CustomOverlay({
    position: position,
    content: content,
    xAnchor: 0.3,
    yAnchor: 0.91
});

// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
kakao.maps.event.addListener(marker, 'click', function() {
    customOverlay.setMap(map);
});

// 커스텀 오버레이를 지도에 표시합니다
//customOverlay.setMap(map);

// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
function closeOverlay() {
    customOverlay.setMap(null);     
}








</script>
</body>
</html>