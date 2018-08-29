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
		<form action="editcomm" method="post" enctype="multipart/form-data">
		<table  class="table table-bordered table-vcenter" align='center' border='1' cellspacing='0'>
    			<tr>
					<th>商品名称</th>
					<td><input type="text" name="comm_name" required="required" value="${co.commName}"></td>
					<td><input type="hidden" name="id" value="${co.id}">
				</tr>
				<tr>
					<th>商品价格</th>
					<td><input type="text" name="comm_price" required="required" value="${co.commPrice}"></td>
				</tr>	
				<tr>
					<th>商品一级类别</th>
					<td>
					<select id="type" name="type_id">
					</select>
					</td>
				</tr>
				<tr>
					<th>商品二级类别</th>
					<td><select id="ztype" name="ztype_id">
					</select></td>
				</tr>
				<tr>
					<th>商品描述或关键词</th>
					<td><input type="text" name="comm_remark" required="required" value="${co.commRemark}"></td>
				</tr>
					<td><input type="submit" class="btn btn-primary" value="提交"></td>
    	</table>
    	</form>
		</div>
		<div style="clear:both"></div>
		<img id="endpng" class="endpng" src="admin/img/site/end.png">
	</div>
	
	<jsp:include page="../public/footer.jsp"/>
	<script>
	$(document).ready(function(){
		$.ajax({
			url :'http://localhost:8080/cot/typelist',
			type : "post",
			async:true,
			dataType : 'json', //以json的形式返回，易解析 "json",
			success: function(data){
				$("#type").empty();
				$("<option value=''>--请选择--</option>").appendTo("#type");
				for(var i=0;i<data.length;i++){//获取plist里面的数据，拼接到select上
				$("#type").append("<option value='"+data[i].id+"'>"+data[i].commType+"</option>");
				}
			},
		});
		
		$("#type").click(function(){
		var id=$("#type").val();
			$.ajax({
				url : 'http://localhost:8080/cot/ztypelist',
				type:'post',
				data: {id:$("#type").val()},
				dataType:'json',
				async:true,
				success:function(data){
					console.log(data);
					$("#ztype").empty();// jq写法 清楚地区下拉框的所有内容，然后拼接上从后台取出来的数据
					$("<option value=''>--请选择--</option>").appendTo("#ztype");
					for(var i=0;i<data.length;i++){//获取clist里面的数据，拼接到select上
					$("#ztype").append("<option value='"+data[i].id+"'>"+data[i].ztypeName+"</option>");
					}
				},
			});
		});		
	});
	</script>
</body>
</html>