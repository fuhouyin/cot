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
		<span>喵，欢迎  ${ sessionScope.user.username} 来到校易</span>
			<a href="my">个人中心</a>	
			<a href="logout">注销</a>									
</nav>


	<a href="main"><img id="logo" src="admin/img/site/logo.gif" class="logo"></a>
	
	<form  method="post" action="selectkeyword">	
		<div class="searchDiv">
			<input name="keyword" type="text" placeholder="书籍刊物  技术服务 ">
			<button  type="submit" class="searchButton">搜索</button>			
		</div>
	</form>	
<div class="homepageDiv">

<img src="admin/img/site/catear.png" id="catear" class="catear"/>
	
<div class="categoryWithCarousel">

<div class="headbar show1" style="height:40px">
		
	<div class="rightMenu" style="margin-left:400px;margin-top: 8px">
				<span><a href="main" style="margin-left:800px">返回首页</a></span>							
	</div>
</div>

<div class="homepageCategoryProducts">
		<div style="clear:both"></div>
			<c:forEach items="${c}" var="c">
				<div class="productItem" >
					<a href="comminfo?id=${c.id }"><img width="50px" src="upload/${c.commImg }"></a>
					<span class="productItemDesc">${c.commName}</span>
					<span class="productPrice">校易专属价:￥${c.commPrice}</span>
					<span class="productItemDesc"><a href="insertorder?id=${c.id }&&price=${c.commPrice}&&img=${c.commImg }" >加入购物车</a></span>
				</div>
			</c:forEach>
			
		<div style="clear:both"></div>
		<img id="endpng" class="endpng" src="admin/img/site/end.png">
</div>

<jsp:include page="../public/footer.jsp"></jsp:include>
	
</body>
</html>


