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
<meta name="description" content="kusoft 惠州 停车场应用">
<meta name="author" content="Paul">

<!-- Favicons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="/image/apple-touch-icon-144-precomposed.png">
<!-- 标题栏：  -->
<link rel="icon" href="/image/favicon.ico" type="image/x-icon">
<!-- 收藏夹：  -->
<link rel="shortcut icon" href="/image/favicon.ico" type="image/ico">

<title>惠州华贸天地欢迎您！！</title>

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

<body>
	<div class="container">
		<!-- 这儿开始你的页面编辑	 ================================================== -->
		<form role="form" id="carParkLocator">
			<div class="form-group">
				<label for="cpId">停车场id主键</label> <input type="text" class="form-control" placeholder="停车场id主键" name="cpId" id="cpId">
			</div>
			<div class="form-group">
				<label for="gh">微信公众号</label> <input type="text" class="form-control" name="gh" id="gh">
			</div>
			<div class="form-group">
				<label for="qrCode">微信二维码编号</label> <input type="text" class="form-control" name="qrCode" id="qrCode">
			</div>
			<div class="form-group">
				<label for="area">楼层编号</label> <input type="text" class="form-control" name="floor" id="floor">
			</div>
			<div class="form-group">
				<label for="area">区域编号</label> <input type="text" class="form-control" name="area" id="area">
			</div>
			<div class="form-group">
				<label for="no">位置编号</label> <input type="text" class="form-control" name="no" id="no">
			</div>
			<div class="form-group">
				<label for="memo">备注</label> <input type="text" class="form-control" name="memo" id="memo">
			</div>
			<button type="button" class="btn btn-default" id="queryBtn_carParkLocator_">提交</button>
			<span class="help-block" id="submitHint"></span>
		</form>
	</div>


	<!-- Bootstrap core JavaScript ================================================== -->
	<!-- Placed at the end of the document so that the pages load faster -->
	<script src="/js/jquery-2.0.3.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<!-- <script src="/js/docs.min.js"></script> -->
	<!-- <script src="/js/jquery.mobile.custom.min.js"></script> -->
	<!-- <script src="/js/jquery.lazyload.min.js"></script> -->

	<!-- 这儿开始写你的脚本  ====================================== -->
	<script type="text/javascript">
		$("document").ready(function() {

			$('#queryBtn_carParkLocator_').on('click', function(){
				$(this).html('提交中...');
				$(this).attr("disabled",true);
				add();
			});
		});

		function add() {
			$.ajax({
			      type: "POST",
			      data: $('#carParkLocator').serialize(),	
			      url: "/carparklocator/add",
			      dataType: "text", 
			      error: function(data){
			        alert("系统异常：" + data);
			      },
			      error: function(jqXHR, textStatus ) {
			    	  resumequeryBtn_carParkLocator_();
			    	  alert("系统异常：" + textStatus);
			      },
			      success: function(data){
			        $("#resultTable_carParkLocator_").html(data);
			        var hint = "添加成功！\n" + data;
			        alert(hint);
			        $("#submitHint").html(hint + '<br>' + Date());
			        resumequeryBtn_carParkLocator_();
			      }
			  });
		   // setTimeout("bindModalTo()", 200);
			//http://localhost/shopInfo/show?page=2&size=2&sort=created,asc
		}
		function resumequeryBtn_carParkLocator_(){
			$('#queryBtn_carParkLocator_').html('提交');
			$('#queryBtn_carParkLocator_').attr('disabled',false);
		}
	</script>
</body>
</html>
