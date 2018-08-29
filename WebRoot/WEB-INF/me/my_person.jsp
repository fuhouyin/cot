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
<title>个人中心</title>
<script src="admin/study/js/jquery/2.0.0/jquery.min.js"></script>
<link href="admin/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="admin/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
<link href="admin/show.css" rel="stylesheet">

</head>

<body>
	<nav class="top "> 
		<span style="color:#C40000;margin:0px" class=" glyphicon glyphicon glyphicon-home redColor">个人中心</span> 
		<a href="logout">注销</a>
	</nav>
	<a href="main"><img id="logo" src="admin/img/site/logo.gif" class="logo"></a>
	
	<div class="homepageCategoryProducts" style="height:400px;margin-top:200px">
		<div style="clear:both"></div>
		<a href="pwdedit" style="float:left" ><button type="button" class="btn btn-primary">修改密码</button></a>
		<a href="userinfo" style="float:left;" ><button type="button" class="btn btn-primary">个人信息</button></a>
		<a href="commadd" style="float:left;clear:both" ><button type="button" class="btn btn-primary">出售商品</button></a>
		<a href="my_comm" style="float:left;"><button type="button" class="btn btn-primary">我的出售</button></a>
		<a href="orderByUserid" style="float:left;clear:both" ><button type="button" class="btn btn-primary">我的订单</button></a>
		<a href="selectByuserid" style="float:left;" ><button type="button" class="btn btn-primary">My购物车</button></a>
		<img style="width:290px;height:210px;margin-left: 250px" src="admin/images/lion.png">
		<p style="font-size: 24px;color:red;float: right;margin-top: 10px;margin-right: 210px">喵! 欢迎${ sessionScope.user.username}回来，我是小依</p>
		<div style="clear:both"></div>
		<font class="jcontent" color ="red">${requestScope.message }</font><div id="radio"></div>
		<img id="endpng" class="endpng" src="admin/img/site/end.png">
	</div>
	
	<jsp:include page="../public/footer.jsp"></jsp:include>
	<script type="text/javascript" src="admin/jspeech.js"></script>
</body>
</html>
