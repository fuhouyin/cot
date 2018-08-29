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
	<!-- 商品列表 -->
	<div class="homepageCategoryProducts" style="height:500px;margin-top:135px">
		<div class=" table-responsive">
			<table class="table table-bordered table-vcenter" align='center' border='1' cellspacing='0'>
				<thead style="background:#337ab7;">
				<tr>
					<td>订单编号</td>
					<td>商品名称</td>
					<td>商品价格</td>
					<td>商品图片</td>
					<td>购买数量</td>
					<td>购买时间</td>
					<td>购买者</td>
				</tr>
				</thead>
				<c:forEach items="${oc}" var="oc" varStatus="st">
					<tr>
						<td>${oc.oid}</td>
						<td>${oc.commName}</td>
						<td>￥${oc.commPrice}</td>
						<td><a href="hcomminfo?id=${oc.commId}"><img width="35px" height="30px" src="upload/${oc.commImg }"></a></td>
						<td>${oc.commNum}</td>
						<td>${oc.otime}</td>
						<td>${oc.username}</td>
					</tr>
				</c:forEach>
			</table>
			<div style="text-align:center">
				<a href="commlist?start=0"><button type="button" class="btn btn-primary">首页</button></a> 
				<a href="commlist?start=${page.start-page.count}"><button type="button" class="btn btn-primary">上一页</button></a> 
				<a href="commlist?start=${page.start+page.count}"><button type="button" class="btn btn-primary">下一页</button></a> 
				<a href="commlist?start=${page.last}"><button type="button" class="btn btn-primary">末页</button></a>
			</div>
		</div>
		<div style="clear:both"></div>
		<img id="endpng" class="endpng" src="admin/img/site/end.png">
	</div>
	
	<jsp:include page="../public/footer.jsp"></jsp:include>
	
</body>
</html>
