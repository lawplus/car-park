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
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="广州 深圳 惠州 小区 停车 记住 分享 位置 一家人">
<meta name="author" content="Paul">

<!-- favicon1s -->
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="/image/apple-touch-icon-144-precomposed.png">
<!-- 标题栏：  -->
<link  rel="icon"  href="/image/favicon1.ico"  type="image/x-icon">
<!-- 收藏夹：  -->
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
<!-- <link href="/css/custom.css" rel="stylesheet"> -->
</head>
<style>
</style>
<body>
<div class="container">
	<!-- 这儿开始你的页面编辑	 ================================================== -->
	<!-- Indicates a successful or positive action -->
	<img src="/image/apple-touch-icon-144-precomposed.png" class="img-responsive center-block" alt="Responsive image">
</div>

	<!-- Bootstrap core JavaScript ================================================== -->
	<!-- Placed at the end of the document so that the pages load faster -->
	<script src="/js/jquery-2.0.3.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	
	<!-- 这儿开始写你的脚本  ====================================== -->
	<script type="text/javascript">
	function showShareGuide() {
		$('body').append('<section class="top_box clearfix box_hide"><img src=""></section><div id="share_guide_box" onclick="ideShareGuide();" style="position:fixed;z-index:9999999;right:0px;top:0px;width:100%;height:100%;background-color: rgba(0,0,0,0.8);text-align:right;" ontouchmove="return true;" ><img src="/image/share.png" style="margin-top:10px;margin-right:10px;float: right;"></div>');
	}
	function hideShareGuide() {
		$("#share_guide_box").remove();
	}
	showShareGuide();
	</script>
</body>
</html>
