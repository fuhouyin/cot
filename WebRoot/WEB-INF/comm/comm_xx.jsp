<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<link rel="shortcut icon" href="admin/img/lion.ico" />
<script src="admin/study/js/jquery/2.0.0/jquery.min.js"></script>
<link href="admin/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="admin/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
<link href="admin/show.css" rel="stylesheet">
<title>校园网上交易系统官网</title>
</head>
<body>
<nav class="top ">
		<a href="main">
			<span style="color:#C40000;margin:0px" class=" glyphicon glyphicon glyphicon-home redColor"></span>
			校易首页
		</a>			
		<span>喵，欢迎来校易</span>
</nav>

	<a href="main"><img id="logo" src="admin/img/site/logo.gif" class="logo"></a>
	
	<form  method="post" action="selectkeyword">	
		<div class="searchDiv">
			<input name="keyword" type="text" placeholder=" 搜索 校易 热门商品：书籍刊物  技术服务 ">
			<button  type="submit" class="searchButton">搜索</button>			
		</div>
	</form>	
<div class="homepageDiv">
<script>
$(function(){
	$("div.eachCategory").mouseenter(function(){
		var cid = $(this).attr("cid");
		$("div.productsAsideCategorys[cid="+cid+"]").show();
	});
	$("div.eachCategory").mouseleave(function(){
		var cid = $(this).attr("cid");
		$("div.productsAsideCategorys[cid="+cid+"]").hide();		
		
	});
	
	$("div.productsAsideCategorys").mouseenter(function(){
		$(this).show();
	});
	
	$("div.productsAsideCategorys").mouseleave(function(){
		$(this).hide();
	});
	
	$("div.rightMenu span").mouseenter(function(){
		var left = $(this).position().left;
		var top = $(this).position().top;
		var width = $(this).css("width");
		var destLeft = parseInt(left) + parseInt(width)/2;
		$("img#catear").css("left",destLeft);
		$("img#catear").css("top",top-20);
		$("img#catear").fadeIn(500);
				
	});
	$("div.rightMenu span").mouseleave(function(){
		$("img#catear").hide();
	});
	
	var left = $("div#carousel-of-product").offset().left;
	$("div.categoryMenu").css("left",left-20);
	$("div.categoryWithCarousel div.head").css("margin-left",left);
	$("div.productsAsideCategorys").css("left",left-20);
	
});
</script>

<img src="admin/img/site/catear.png" id="catear" class="catear"/>
	
<div class="categoryWithCarousel">

<div class="headbar show1" style="height:40px">
		
	<div class="rightMenu" style="margin-left:400px;margin-top: 8px">
				<span><a href="main" style="margin-left:800px">返回首页</a></span>					
	</div>
</div>

<div class="categoryPictureInProductPageDiv">
    	<img class="categoryPictureInProductPage" src="">
</div>
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
		
		<div class="buyDiv">
			<form action="insertgcar" method="post">
				<input type="number" name="comm_num">
				<input type="hidden" name="comm_id" value="${sessionScope.co.id }">
				<input type="hidden" name="comm_price" value="${sessionScope.co.commPrice }">
				<button class="buyButton">加入购物车</button>
			</form>
		</div>
		<div class="buyDiv">
			<form action="insertorder" method="post">
				<input type="number" name="comm_num">
				<input type="hidden" name="comm_id" value="${sessionScope.co.id }">
				<input type="hidden" name="comm_price" value="${sessionScope.co.commPrice }">
				<button class="buyButton">立即购买</button>
			</form>
		</div>
</div>		
		
<div id="footer" class="footer" style="display: block;margin-top: 200px">
		<div id="footer_ensure" class="footer_ensure">           
         	<img src="admin/img/site/ensure.png">
    	</div>
		<img id="cateye" class="cateye" src="admin/img/site/cateye.png">
		<div id="copyright" class="copyright">
			<div class="white_link">
				<a href="#nowhere">关于校易</a> <a href="http://www.hxci.com.cn/">哈尔滨信息工程学院</a>
				<a href="#nowhere">校园快递</a>
			</div>
			<div class="license">
				<div class="copyRightYear">© 2017-2018 校园网上交易系统 版权所有</div>
			</div>
		</div>
</div>
	
</body>
</html>