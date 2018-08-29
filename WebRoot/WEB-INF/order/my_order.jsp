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
		<a href="mypersonshow">修改个人信息</a> 
		<a href="mycommodity">商品管理</a> 
		<a href="orderlist">购物车</a> 
		<a href="pay">购买记录</a> 
	</nav>
	<a href="index.jsp"><img id="logo" src="admin/img/site/logo.gif" class="logo"></a>
	<!-- 商品列表 -->
	<div class="homepageCategoryProducts" style="height:500px;margin-top:135px">
		<a href="my"><<<<<返回个人中心>>>>></a>
		<div class=" table-responsive">
			<table class="table table-bordered table-vcenter" align='center' border='1' cellspacing='0'>
				<thead style="background:#337ab7;">
				<tr>
					<td>商品名称</td>
					<td>商品价格</td>
					<td>商品图片</td>
					<td>购买数量</td>
					<td>购买时间</td>
					<td>操作</td>
				</tr>
				</thead>
				<c:forEach items="${oc}" var="o" varStatus="st">
					<tr>
						<td>${o.commName}</td>
						<td>￥${o.commPrice}</td>
						<td><a href="comminfo?id=${o.commId }"><img width="35px" height="30px" src="upload/${o.commImg}"></a></td>
						<td>${o.commNum}</td>
						<td>${o.otime}</td>
						<td><a href="delorder?id=${o.oid }"><button type="button" class="btn btn-primary">删除订单</button></a></td>
					</tr>
				</c:forEach>
			</table>
			<div style="text-align:center">
				<a href="orderlist?start=0"><button type="button" class="btn btn-primary">首页</button></a> 
				<a href="orderlist?start=${page.start-page.count}"><button type="button" class="btn btn-primary">上一页</button></a> 
				<a href="orderlist?start=${page.start+page.count}"><button type="button" class="btn btn-primary">下一页</button></a> 
				<a href="orderlist?start=${page.last}"><button type="button" class="btn btn-primary">末页</button></a>
			</div>
		</div>
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
<script>
$(function() {
	$(".status").each(function(){
		
		if($(this).html()=="0"){
			$(this).html("待支付");
		}
		
	});
});
</script>
</body>
</html>
