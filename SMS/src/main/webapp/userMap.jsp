<%@page import="com.smhrd.model.restaurantVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>주소로 장소 표시하기</title>
    <link rel="stylesheet" href="./css/userMap.css">
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ad32e4cc626799cc0ad5db80f46f316a&libraries=services"></script>
</head>
<body>
<div id="map" style="float: right;width:70%;height:1000px;"></div>
<!-- 데이터 꺼내기 -->
<%
List<restaurantVO> list= (List<restaurantVO>)request.getAttribute("list");
%>
<script>
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
</script>
<script src="./js/userMap.js"></script>
</body>
</html>