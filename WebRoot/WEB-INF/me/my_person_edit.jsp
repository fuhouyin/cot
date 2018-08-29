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
	<div class="homepageCategoryProducts" style="height:350px;margin-top:200px">
		<div style="clear:both"></div>
		<a href="my"><<<<<返回个人中心>>>>></a>
		<div style="width:500px;margin:0px auto;text-align:center;">
		
		<form action="update" method="post">
			<table  class="table table-bordered table-vcenter" align='center' border='1' cellspacing='0'>
				<tr>
					<th>真实姓名</th>
					<td><input type="text" name="name" value="${my.name}" ></td>
				</tr>
				<tr>
					<th>微信号</th>
					<td><input type="text" name="weixin" value="${my.weixin}" ></td>
				</tr>	
				<tr>
					<th>详细地址</th>
					<td><input type="text" name="address" value="${my.address}" ></td>
				</tr>
				<tr>
					<th>省市区</th>
					<td><input type="text" name="pca" value="${my.pca}" id="addr-show"></td>
					<!--省份选择-->
            		<td><select id="prov" onchange="showCity(this)">
                		<option>=请选择省份=</option>
           			</select></td>

		            <!--城市选择-->
		            <td><select id="city" onchange="showCountry(this)">
		                <option>=请选择城市=</option>
		            </select></td>
		
		            <!--县区选择-->
		            <td><select id="country" onchange="selecCountry(this)">
		                <option>=请选择县区=</option>
		            </select></td>
		            <td><button type="button" class="btn met1" onClick="showAddr()">确定</button></td>
				</tr>
				<tr>
					<th>联系电话</th>
					<td><input type="text" name="phone" value="${my.phone}" ></td>
				</tr>	
					<td><input type="submit" class="btn btn-primary" value="修改"></td>
			</table>
			</form>
		</div>
		<div style="clear:both"></div>
		<img id="endpng" class="endpng" src="admin/img/site/end.png">
	</div>
	
	<jsp:include page="../public/footer.jsp"></jsp:include>
	
	<script src="admin/js/city.js"></script>
		<script src="admin/js/method01.js"></script>
</body>
</html>