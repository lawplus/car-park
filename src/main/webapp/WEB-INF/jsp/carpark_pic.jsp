<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- <meta name="viewport" content="width=device-width, initial-scale=1"> -->
<meta name="description" content="广州 深圳 惠州 小区 停车 记住 分享 位置 一家人">
<meta name="author" content="Paul">

<!-- favicon1s -->
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="/image/apple-touch-icon-144-precomposed.png">
<link rel="icon" href="/image/favicon1.ico" type="image/x-icon">
<link rel="shortcut icon" href="/image/favicon1.ico" type="image/ico">

<title>小区停车易</title>

<!-- Bootstrap core CSS -->
<link href="/css/bootstrap.min.css" rel="stylesheet" media="screen">

<!-- Just for debugging purposes. Don't actually copy this line! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

<!-- Custom styles for this template -->
<link href="/css/custom.css" rel="stylesheet">
</head>
<style>
	body {
		padding-top: 20px;
	}
</style>
<body>
<div class="container">
	<img src="/image/carpark.jpg" alt="" usemap="#Map" id='imgMap' class="map"/><!--class="center-block img-thumbnail" img-responsive -->
<map name="Map" id="Map">
    <area  href="javascript:alert('你的车在此区域');" alt="" title="1" shape="rect" coords="${location.mapArea}" id='area1'/>
    <!-- <area alt="" title="2" href="#" shape="rect" coords="290,39,350,84" />
    <area alt="" title="3" href="#" shape="rect" coords="435,293,497,336" />
    <area alt="" title="4" href="#" shape="rect" coords="651,445,720,493" />
    <area alt="" title="5" href="#" shape="rect" coords="794,141,936,236" />
    <area  href="#" alt="" title="6" href="#" shape="rect" coords="88,296,141,367" onclick="javascript:alert('你的车在区域6');"/>
    <area alt="" title="7" href="#" shape="rect" coords="803,41,989,79" />
    <area alt="" title="8" href="#" shape="rect" coords="286,444,338,490" />
    <area alt="" title="9" shape="rect" coords="91,447,188,537" onclick="javascript:alert('你现在的位置');test();" id='area9'/> -->
</map>
		
</div>

	<!-- Bootstrap core JavaScript ================================================== -->
	<!-- Placed at the end of the document so that the pages load faster -->
	<script src="/js/jquery-2.0.3.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<!-- <script src="/js/docs.min.js"></script>
	<script src="/js/jquery.mobile.custom.min.js"></script>
	<script src="/js/jquery.lazyload.min.js"></script> -->
	<script type="text/javascript" src="/js/jquery.maphilight.min.js"></script>
	<script>
	<!-- 这儿开始写你的脚本  ====================================== -->
	$(function() {
		//$('.map').maphilight({ stroke: false, fillColor: '009DDF', fillOpacity: 0.7, alwaysOn: true, shadow: true });
		//$('#area9').attr('data-maphilight','{"fillColor":"009DDF", "fillOpacity": "0.7", "alwaysOn":true}');
		$('#area1').attr('data-maphilight','{"fillColor":"EEC900", "fillOpacity": "0.7", "alwaysOn":true}');
		$('.map').maphilight();
	});
	function test(){
		
	}
	/* $("document").ready(function() {
		var maphilight = $('#imgMap').maphilight();

		$('area').click(function(e) {
		    e.preventDefault();
		    var data = $(this).data(maphilight) || {};
		    data.fillColor = 'FF0000'; // Sample color

		    // This sets the new data, and finally checks for areas with alwaysOn set
		    $(this).data('#area9', data).trigger(alwaysOn.maphilight);
		  });
	});
	
$(function() {
  
}); */
</script>
</body>
</html>
