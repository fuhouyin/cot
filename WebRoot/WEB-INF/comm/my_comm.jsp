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
<title>个人中心/商品管理</title>
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
	<!-- 商品列表 -->
	<div class="homepageCategoryProducts" style="height:500px;margin-top:135px">
		<a href="my"><<<<<返回个人中心>>>>></a>
		<div class=" table-responsive">
			<table class="table table-bordered table-vcenter" align='center' border='1' cellspacing='0'>
				<thead style="background:#337ab7;">
				<tr>
					<td>商品编号</td>
					<td>商品名称</td>
					<td>商品价格</td>
					<td>商品图片</td>
					<td>商品状态</td>
					<td>操作</td>
					<td>操作</td>
					<td>操作</td>
				</tr>
				</thead>
				<c:forEach items="${c}" var="c" varStatus="st">
					<tr>
						<td>${c.id}</td>
						<td>${c.commName}</td>
						<td>￥${c.commPrice}</td>
						<td><a href="comminfo?id=${c.id}"><img width="35px" height="30px" src="upload/${c.commImg }"></a></td>
						<td class="status">${c.commStatus}</td>
						<td><a href="mycommdown?id=${c.id }"><button type="button" class="btn btn-primary">下架</button></a></td>
						<td><a href="commedit?id=${c.id }"><button type="button" class="btn btn-primary">修改</button></a></td>
						<td><a href="editimg?id=${c.id }"><button type="button" class="btn btn-primary">修改</button></a></td>
					</tr>
				</c:forEach>
			</table>
			<div style="text-align:center">
				<a href="my_comm?start=0"><button type="button" class="btn btn-primary">首页</button></a> 
				<a href="my_comm?start=${page.start-page.count}"><button type="button" class="btn btn-primary">上一页</button></a> 
				<a href="my_comm?start=${page.start+page.count}"><button type="button" class="btn btn-primary">下一页</button></a> 
				<a href="my_comm?start=${page.last}"><button type="button" class="btn btn-primary">末页</button></a>
			</div>
		</div>
		<div style="clear:both"></div>
		<img id="endpng" class="endpng" src="admin/img/site/end.png">
	</div>
	
	<jsp:include page="../public/footer.jsp"></jsp:include>
	
	<script>
$(function() {
	$(".status").each(function(){
		if($(this).html()=="1"){
			$(this).html("上架中");
		}
		if($(this).html()=="0"){
			$(this).html("下架中");
		}
	});
});
</script>
</body>
</html>
