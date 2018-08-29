<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<link rel="shortcut icon" href="admin/img/lion.ico" />
<title>后台管理/商品管理</title>
<script src="admin/study/js/jquery/2.0.0/jquery.min.js"></script>
<link href="admin/study/css/bootstrap/3.3.6/bootstrap.min.css"rel="stylesheet">
<script src="admin/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
<link href="admin/show.css" rel="stylesheet">

</head>

<body>
	<nav class="top "> 
		<span style="color:#C40000;margin:0px" class=" glyphicon glyphicon glyphicon-home redColor">后台管理</span>
		<a href="userlist">用户管理</a> 
		<a href="commlist">商品管理</a> 
		<a href="torderlist">订单管理</a>
		<a href="logout">注销</a>  
	</nav>
	<img id="logo" src="admin/img/site/logo.gif" class="logo">
	<div style="width:100%;height:150px"></div>
	<!-- 商品列表 -->
	<a href="commlist"><<<返回用户管理>>></a>
<div class="imgAndInfo">
	<div class="imgInimgAndInfo">
		<img src="upload/${sessionScope.co.commImg }" class="bigImg">
	</div>
</div>		

<div class="infoInimgAndInfo">
		
		<div class="productTitle">${sessionScope.co.commName }:${sessionScope.co.commRemark }</div>
		
		<div class="productPrice">
			<div class="juhuasuan">
				<span class="juhuasuanBig" >校易精品：${sessionScope.co.commName }</span>
			</div>
			<div class="productPriceDiv">
				<div class="gouwujuanDiv">
				<span> 全校易实物商品通用</span>
				</div>
				<div class="promotionDiv">
					<span class="promotionPriceYuan">校易专属价 </span>
					<span class="promotionPriceYuan">¥</span>
					<span class="promotionPrice">
						${sessionScope.co.commPrice }
					</span>				
				</div>
				<div class="promotionDiv">
					<span>卖家信息=></span>
					<span>卖家姓名：${sessionScope.co.name } |</span>
					<span>卖家电话：${sessionScope.co.phone } |</span>
					<span>卖家微信：${sessionScope.co.weixin }</span>
				</div>
			</div>
		</div>
		
		<div class="serviceCommitment">
			<span class="serviceCommitmentDesc">服务承诺</span>
			<span class="serviceCommitmentLink">
				<a href="#nowhere">正品保证</a>
				<a href="#nowhere">极速退款</a>
				<a href="#nowhere">赠运费险</a>
				<a href="#nowhere">七天无理由退换</a>
			</span>
		</div>
		
</div>		
	
	<jsp:include page="../public/footer.jsp"></jsp:include>
	
	<script>
$(function() {
	$(".status").each(function(){
		if($(this).html()=="1"){
			$(this).html("出售中");
		}
		if($(this).html()=="0"){
			$(this).html("已下架");
		}
	});
});
</script>
</body>
</html>
