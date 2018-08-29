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
<title>个人中心/购物车</title>
<script src="admin/study/js/jquery/2.0.0/jquery.min.js"></script>
<link href="admin/study/css/bootstrap/3.3.6/bootstrap.min.css"rel="stylesheet">
<script src="admin/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
<link href="admin/show.css" rel="stylesheet">

</head>

<body>
	<nav class="top "> 
		<span style="color:#C40000;margin:0px" class=" glyphicon glyphicon glyphicon-home redColor">个人中心</span> 
	</nav>
	<a href="main"><img id="logo" src="admin/img/site/logo.gif" class="logo"></a>
	<div class="homepageCategoryProducts" style="height:500px;margin-top:135px">
		<a href="my"><<<<<返回个人中心>>>>></a>
		<p style="text-align:center;color:red;font-size:20">购买前请联系好卖家以便及时发货(如不知卖家信息可点击商品图片查看卖家信息)</p>
		<div class=" table-responsive">
			<table class="table table-bordered table-vcenter" align='center' border='1' cellspacing='0'>
				<thead style="background:#337ab7;">
				<tr>
					<td>商品名称</td>
					<td>商品价格</td>
					<td>购买数量</td>
					<td>商品图片</td>
					<td>添加时间</td>
					<td>操作</td>
					<td>操作</td>
				</tr>
				</thead>
				<c:forEach items="${gcc}" var="gcc" varStatus="st">
					<tr>
						<td>${gcc.commName}</td>
						<td>￥${gcc.commPrice}</td>
						<td>${gcc.commNum}</td>
						<td><a href="comminfo?id=${gcc.commId }"><img width="35px" height="30px" src="upload/${gcc.commImg }"></a></td>
						<td>${gcc.gtime}</td>
						<td><a href="insertorder?comm_id=${gcc.commId }&&comm_num=${gcc.commNum}&&comm_price=${gcc.commPrice}&&id=${gcc.gId }"><button type="button" class="btn btn-primary">购买</button></a></td>
						<td><a href="delgcar?id=${gcc.gId }"><button type="button" class="btn btn-primary">取消</button></a></td>
					</tr>
				</c:forEach>
			</table>
			<div style="text-align:center">
				<a href="selectByuserid?start=0"><button type="button" class="btn btn-primary">首页</button></a> 
				<a href="selectByuserid?start=${page.start-page.count}"><button type="button" class="btn btn-primary">上一页</button></a> 
				<a href="selectByuserid?start=${page.start+page.count}"><button type="button" class="btn btn-primary">下一页</button></a> 
				<a href="selectByuserid?start=${page.last}"><button type="button" class="btn btn-primary">末页</button></a>
			</div>
		</div>
		<div style="clear:both"></div>
		<img id="endpng" class="endpng" src="admin/img/site/end.png">
	</div>
<jsp:include page="../public/footer.jsp"></jsp:include>
</body>
</html>