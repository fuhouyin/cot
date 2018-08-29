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
<title>后台管理/用户管理</title>
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
	<div class="homepageCategoryProducts" style="height:500px;margin-top:135px">
		<div class=" table-responsive">
			<table class="table table-bordered table-vcenter" align='center' border='1' cellspacing='0'>
				<thead style="background:#337ab7;">
				<tr>
					<td>编号</td>
					<td>账号</td>
					<td>密码</td>
					<td>状态</td>
					<td>操作</td>
					<td>操作</td>
				</tr>
				</thead>
				<c:forEach items="${us}" var="u" varStatus="st">
					<tr>
						<td>${u.id}</td>
						<td><a href="myuserinfo?user_id=${u.id}">${u.username}</a></td>
						<td>${u.password}</td>
						<td class="status">${u.status}</td>
						<td><a href="updateuserdown?id=${u.id}"><button type="button" class="btn btn-primary">禁止登录</button></a></td>
						<td><a href="updateuserup?id=${u.id}"><button type="button" class="btn btn-primary">准许登录</button></a></td>
					</tr>
				</c:forEach>
			</table>
			<div style="text-align:center">
				<a href="userlist?start=0"><button type="button" class="btn btn-primary">首页</button></a> 
				<a href="userlist?start=${page.start-page.count}"><button type="button" class="btn btn-primary">上一页</button></a> 
				<a href="userlist?start=${page.start+page.count}"><button type="button" class="btn btn-primary">下一页</button></a> 
				<a href="userlist?start=${page.last}"><button type="button" class="btn btn-primary">末页</button></a>
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
			$(this).html("准许登录");
		}
		if($(this).html()=="0"){
			$(this).html("已禁止登录");
		}
	});
});
</script>
</body>
</html>
