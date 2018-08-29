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
<title>后台管理界面</title>
<script src="admin/study/js/jquery/2.0.0/jquery.min.js"></script>
<link href="admin/study/css/bootstrap/3.3.6/bootstrap.min.css"
	rel="stylesheet">
<script src="admin/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
<link href="admin/show.css" rel="stylesheet">

</head>

<body>
	<nav class="top"> <span style="color:#C40000;margin:0px" class=" glyphicon glyphicon glyphicon-home redColor">后台界面</span> 
		<a href="userlist">用户管理</a> 
		<a href="commlist">商品管理</a> 
		<a href="torderlist">订单管理</a>
		<a href="logout">注销</a> 
	</nav>
	<img id="logo" src="admin/img/site/logo.gif" class="logo">

	<div class="homepageCategoryProducts" style="height:400px;margin-top:200px">
		<div style="clear:both"></div>
		<a href="userlist" style="float:left;" ><button type="button" class="btn btn-primary">用户管理</button></a>
		<a href="commlist" style="float:left;clear:both" ><button type="button" class="btn btn-primary">商品管理</button></a>
		<a href="torderlist" style="float:left;clear:both" ><button type="button" class="btn btn-primary">订单管理</button></a>
		<img style="width:350px;height:200px;margin-left: 280px" src="admin/images/lion.png">
		<p style="font-size: 24px;color:red;float: right;margin-top: 10px;margin-right: 210px">喵! 欢迎回来，我是小依 ^_^</p>
		<div style="clear:both"></div>
		<img id="endpng" class="endpng" src="admin/img/site/end.png">
	</div>
	
	<div id="footer" class="footer" style="display: block;margin-top: 100px">


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
