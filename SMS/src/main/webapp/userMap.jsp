<%@page import="com.smhrd.model.restaurantVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>주소로 장소 표시하기</title>
    <style>
        /* 오버레이 전체 틀 */
    .overlaybox {position:relative;width:250px;height:280px;background-color:gray;padding:8px;border-radius: 5px;
        box-shadow: 0 1px 1px rgba(0,0,0,0.11), 
              0 2px 2px rgba(0,0,0,0.11), 
              0 4px 4px rgba(0,0,0,0.11), 
              0 8px 8px rgba(0,0,0,0.11), 
              0 16px 16px rgba(0,0,0,0.11), 
              0 32px 32px rgba(0,0,0,0.11);}
        .overlaybox div, ul {overflow:hidden;margin:0;padding:0;}
        .overlaybox li {list-style: none;}
        /* 오버레이 메인타이틀 */
        .overlaybox .boxtitle {color:#fff; font-size:16px;font-weight:bold;margin-bottom:8px;}
        /*.overlaybox .first {position:relative;width:247px;height:136px;background: url('https://d12zq4w4guyljn.cloudfront.net/750_750_20200726060017037_photo_314372b42282.jpg') no-repeat;margin-bottom:8px;margin-top:8px;border-radius: 5px;}*/
        .overlaybox .first {position:relative;width:247px;height:136px; no-repeat;margin-bottom:8px;margin-top:8px;border-radius: 5px;}
        .first .text {color:#fff;font-weight:bold;}
        .first .triangle {position:absolute;width:48px;height:48px;top:0;left:0;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/triangle.png') no-repeat; padding:6px;font-size:18px;}
        .first .movietitle {position:absolute;width:100%;bottom:0;background:rgba(0,0,0,0.4);padding:7px 15px;font-size:14px;}
        .overlaybox ul {width:247px;}
        /* 오버레이 서브타이틀 */
        .overlaybox li {position:relative;margin-bottom:2px;background:green;padding:5px 10px;color:#aaabaf;line-height: 1;border-radius: 3px;}
        .overlaybox li span {display:inline-block;}
        .overlaybox li .number {color:#fff; font-size:16px;font-weight:bold;}
        .overlaybox li .title {font-size:15px;margin-left: 10px;}
        .overlaybox ul .arrow {position:absolute;margin-top:8px;right:25px;width:5px;height:3px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/updown.png') no-repeat;} 
        .overlaybox li .up {background-position:0 -40px;}
        .overlaybox li .down {background-position:0 -60px;}
        .overlaybox li .count {position:absolute;margin-top:5px;right:15px;font-size:10px;}
        .close {
            background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');
            float: right;
           
           width:17px;
           height:17px;
    
           }
        .close:hover {cursor: pointer;}
    </style>
</head>
<body>
<!-- 데이터 꺼내기 -->
<%
List<restaurantVO> list= (List<restaurantVO>)request.getAttribute("list");
//for(restaurantVO i : list ){	
//}

System.out.println("check지도맵 : "+ list.get(0).getRes_seq());
System.out.println("check지도맵 : "+ list.get(0).getRes_name());
System.out.println("check지도맵 : "+ list.get(0).getRes_addr());
System.out.println("check지도맵 : "+ list.get(0).getRes_tel());
System.out.println("check지도맵 : "+ list.get(0).getOpen_time());
System.out.println("check지도맵 : "+ list.get(0).getClose_time());
System.out.println("check지도맵 : "+ list.get(0).getRest_day());
System.out.println("check지도맵 : "+ list.get(0).getRes_pic1());
System.out.println("check지도맵 : "+ list.get(0).getRes_pic2());
System.out.println("check지도맵 : "+ list.get(0).getRes_pic3());
System.out.println("check지도맵 : "+ list.get(0).getRes_lat());
System.out.println("check지도맵 : "+ list.get(0).getRes_lng());

%>




<div id="map" style="float: right;width:70%;height:600px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ad32e4cc626799cc0ad5db80f46f316a&libraries=services"></script>
<script>

// 지도를 표시할 div ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

var mapContainer = document.getElementById('map'),
mapOption = { 
    // 북구청
    center: new kakao.maps.LatLng(35.17710237886242, 126.90665384322686), // 지도의 중심좌표
    level: 5 // 지도의 확대 레벨
};


// 1. 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption);

// 2. 지도에 확대 축소 컨트롤을 생성한다
var zoomControl = new kakao.maps.ZoomControl();

// 2-1. 지도의 우측에 확대 축소 컨트롤을 추가한다
map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

// 전역변수들 생성
let positions=[];
var marker;
var imageSrc;
var markers=[];
var clickedOverlay;
var title;

//var data= [{
//    res_seq : '1' ,// 가게번호
//	 res_name :	'전대1',// 가게이름
//	 res_addr : '광주북구서방로9번길30'	,// 가게주소
//	 res_tel :	'010-0000-0000',// 가게 전화번호
//	 open_time : '09:00',// 오픈시간
//	 close_time : '17:00'	// 마감시간
//},{
 //   res_seq : '2' ,// 가게번호
//	 res_name :	'전대2',// 가게이름
//	 res_addr : '광주 북구 용봉로77용봉문화관1층스위티움'	,// 가게주소
//	 res_tel :	'010-1111-1111',// 가게 전화번호
//	 open_time : '10:00',// 오픈시간
//	 close_time : '18:00'	// 마감시간
//}]
// 데이터 꺼내오기
let data1 = []
let data2 = []
let data3 = []
let data4 = []
let data5 = []
let data6 = []
<%for(int i=0;i<list.size();i++){%>
	
	data1.push('<%=list.get(i).getRes_name()%>')
	data2.push('<%=list.get(i).getRes_pic1()%>')
	data3.push('<%=list.get(i).getOpen_time()%>')
	data4.push('<%=list.get(i).getClose_time()%>')
	data5.push('<%=list.get(i).getRes_addr()%>')
	data6.push('<%=list.get(i).getRes_tel()%>')
<%}%>

// 3. 주소-좌표 변환 객체를 생성합니다
// 수정 ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
for (let i = 0; i < data1.length; i++) {
	// list 첫번째 객체의 첫번째 주소 넣어주기
    positions.push(data5[i]);
}
var geocoder = new kakao.maps.services.Geocoder();

// 호버시 가져올 이미지--------------------------------
var hoverMarkerImage = new kakao.maps.MarkerImage(
    'https://cdn-icons-png.flaticon.com/512/5695/5695164.png'
  ,
  new kakao.maps.Size(),
  { offset: new kakao.maps.Point() }
);
//---------------------------------------------------------

// 수정 ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★
//for 문 시작-------------------------
for (let i = 0; i < data1.length; i ++){

geocoder.addressSearch(positions[i], function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

       var imageSrc = 'https://velog.velcdn.com/images/for_i_in_range/post/69d4371a-0b7f-4e43-ac9c-8a2f73da56a5/image.png', // 마커이미지의 주소입니다    
        imageSize = new kakao.maps.Size(50, 50), // 마커이미지의 크기입니다
        imageOption = {offset: new kakao.maps.Point(27, 55)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
      
        // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption)
        // 결과값으로 받은 위치를 마커로 표시합니다
        function addMarker(position) {
            marker = new kakao.maps.Marker({
            map: map,
            position: position,
            image: markerImage
        });
        markers.push(marker);
        }
        for(let j = 0; j < positions.length; j ++){
       addMarker(new kakao.maps.LatLng(result[0].y, result[0].x));
       //markers[i].setMap(map) 
    }
// 마커 끝 -------------------------------------------------------------------------------------------------------------------------------------
      //marker.setMap(map);
      //markers[i].setMap(map) 
      
// 오버레이 시작 오버레이 시작 오버레이 시작 오버레이 시작 오버레이 시작 오버레이 시작 오버레이 시작 오버레이 시작 오버레이 시작 오버레이 시작 오버레이 시작 오버레이 시작 오버레이 시작

     // 커스텀 오버레이에 표시할 내용입니다     
     // HTML 문자열 또는 Dom Element 입니다 
var content = document.createElement('div');
content.className = 'overlaybox';
var titleClose= document.createElement('div');
titleClose.textContent ='닫기11111111111111111111'; // 새로운 div 엘리먼트 생성

title = document.createElement('span');
title.className = 'boxtitle';
    // 임시로 데이터동적할당 테스트 0226 05:27            오버레이 제목
title.textContent = data1[i]//                          제목
titleClose.appendChild(title);

var closeButton = document.createElement('span');
closeButton.className = 'close';
closeButton.textContent = '';// 수정
titleClose.appendChild(closeButton);
// closeButton 클릭시 커스텀오버레이 삭제
closeButton.addEventListener('click',()=>{
    customOverlay.setMap(null)
});

var img = document.createElement('img');
img.setAttribute('src',data2[i]) //                          이미지
img.setAttribute('width','100%')
img.setAttribute('height','100%')

var first = document.createElement('div');
first.className = 'first';
first.appendChild(img)

var ul = document.createElement('ul');
var li1 = document.createElement('li');
li1.className = 'up';
var span1 = document.createElement('span');
span1.className = 'number';
span1.textContent = '오픈시간';
var span2 = document.createElement('span');
span2.className = 'title';
span2.textContent = data3[i] //                          오픈시간
li1.appendChild(span1);
li1.appendChild(span2);
var li2 = document.createElement('li');
var span3 = document.createElement('span');
span3.className = 'number';
span3.textContent = '마감시간';
var span4 = document.createElement('span');
span4.className = 'title';
span4.textContent = data4[i] //                          마감시간
li2.appendChild(span3);
li2.appendChild(span4);
var li3 = document.createElement('li');
var span5 = document.createElement('span');
span5.className = 'number';
span5.textContent = '위치';
var span6 = document.createElement('span');
span6.className = 'title';
span6.textContent = data5[i] //                          주소
li3.appendChild(span5);
li3.appendChild(span6);
var li4 = document.createElement('li');
var span7 = document.createElement('span');
span7.className = 'number';
span7.textContent = '전화번호';
var span8 = document.createElement('span');
span8.className = 'title';
span8.textContent = data6[i] //                          전화번호
li4.appendChild(span7);
li4.appendChild(span8);
ul.appendChild(li1);
ul.appendChild(li2);
ul.appendChild(li3);
ul.appendChild(li4);
content.appendChild(title);
content.appendChild(closeButton);
content.appendChild(first);
content.appendChild(ul);

//각각의 마커에 이벤트를 줘야했어서 marker들을 markers배열에 따로 담아서
// 클로저 사용하여 각각의 마커에 이벤트 추가
//클로저(Closure)
//클로저를 이용하면 함수 내부에서 외부 변수를 참조할 수 있습니다.
for (let k = 0; k < markers.length; k++) {
    // 마커 mouseover 이벤트 핸들러 등록
    (function(marker) {
kakao.maps.event.addListener(marker, 'mouseover', function() {
    // 마커오버시 이미지 변경
    marker.setImage(hoverMarkerImage);
    //마커 오버시 다른마커들에 가려지는문제 zindex값 변경으로 해결
    marker.setZIndex(9000);

            // 마커를 지도에서 제거한 후 다시 추가하여 순서를 변경
            marker.setMap(null);
            marker.setMap(map);
    console.log("마우스 오버")
});
})(markers[k]);
}

for (var q = 0; q < markers.length; q++) {
// 마커 mouseout 이벤트 핸들러 등록
    (function(marker) {
kakao.maps.event.addListener(markers[q], 'mouseout', function() {
  // 마커 이미지를 원래 이미지로 변경
  marker.setImage(markerImage);
    console.log("마우스 아웃")
});
})(markers[q]);
}

    // 커스텀 오버레이를 생성합니다
        var customOverlay = new kakao.maps.CustomOverlay({
        position: coords,
        content: content,
        xAnchor: 0,
        yAnchor: 1.2,
    });
    // 마커보다 ZIndex값을 높여 무조건 마커보다 위에 표시
    customOverlay.setZIndex(9999)

    // 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
    kakao.maps.event.addListener(marker, 'click', function() {
        // 마커중심으로 옮기는 함수
        setCenter()
        if(clickedOverlay) {  // 이미 표시되어 있는 경우
            clickedOverlay.setMap(null);  // 커스텀 오버레이 삭제
            
            console.log("123")

         }
         customOverlay.setMap(map); // 처음찍는거라면 오버레이 생성
         clickedOverlay = customOverlay; // 생성된 오버레이 클릭오버레이에 담아서 다음 if문대기
        
    });  
    function setCenter() {            
    // 이동할 위도 경도 위치를 생성합니다 
    // 대체 왜 -는 작동하는데 +는 작동하지않는거지 ...-해결(result[0].y-(-0.008))
    var moveLatLon = new kakao.maps.LatLng(result[0].y-(-0.008),result[0].x);
    
    // 지도 중심을 이동 시킵니다
    map.panTo(moveLatLon);
}   
    
     }
    });

}
// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
function closeOverlay() {
    customOverlay.setMap(null); 
// 마커 클릭시 마커중심으로 지도 변경
    
}  


</script>
</body>
</html>