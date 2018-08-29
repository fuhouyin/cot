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
<title>个人中心/商品添加</title>
<script src="admin/study/js/jquery/2.0.0/jquery.min.js"></script>
<link href="admin/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="admin/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
<link href="admin/show.css" rel="stylesheet">
</head>

<body>
	<nav class="top "> 
		<span style="color:#C40000;margin:0px" class=" glyphicon glyphicon glyphicon-home redColor">个人中心</span> 
	</nav>
	<a href="main"><img id="logo" src="admin/img/site/logo.gif" class="logo"></a>
	
	<div class="homepageCategoryProducts" style="height:350px;margin-top:200px">
		<div style="clear:both"></div>
		<a href="my"><<<<<返回个人中心>>>>></a>
		<div  class=" table-responsive" >
		<form action="editcommimg" method="post" enctype="multipart/form-data">
		<table  class="table table-bordered table-vcenter" align='center' border='1' cellspacing='0'>
				<tr>
					<th>请选择图片</th>
					<td><input type="hidden" name="id" value="${sessionScope.c_id}">
					<td><input type="file" name="file" required="required"></td>
				</tr>
					<td><input type="submit" class="btn btn-primary" value="提交"></td>
    	</table>
    	</form>
		</div>
		<div style="clear:both"></div>
		<img id="endpng" class="endpng" src="admin/img/site/end.png">
	</div>
	
	<jsp:include page="../public/footer.jsp"/>
</body>
</html>