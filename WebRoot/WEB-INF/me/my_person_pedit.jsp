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
	</nav>
	<a href="main"><img id="logo" src="admin/img/site/logo.gif" class="logo"></a>
	<div class="homepageCategoryProducts" style="height:350px;margin-top:200px">
		<div style="clear:both"></div>
		<a href="my"><<<<<返回个人中心>>>>></a>
		<div style="width:500px;margin:0px auto;text-align:center;">
		<form action="pedit" method="post">
			<table  class="table table-bordered table-vcenter" align='center' border='1' cellspacing='0'>
				<tr>
					<th>原密码密码</th>
					<td><input id="yuan" type="text" name="ypassword"  required="required"></td>
				</tr>
				<tr>
					<th>密码</th>
					<td><input id="xin" type="text" name="password" value="" required="required"></td>
				</tr>
				<tr>
					<th>确认密码</th>
					<td><input id="que" type="text" onblur="check2pwd()" name="qpassword"  required="required"></td>
				</tr>	
					<td><input type="submit" class="btn btn-primary" value="修改"></td>
			</table>
			</form>
		</div>
		<div style="clear:both"></div>
		<img id="endpng" class="endpng" src="admin/img/site/end.png">
	</div>
	
	<jsp:include page="../public/footer.jsp"></jsp:include>
	
	<script>
	$(function () {
            $("#yuan").blur(function () {
                $.ajax({
                    url: "ispwd",        //后台url
                    data: {                          //数据
                        password:$("input[name='ypassword']").val()
                    },
                    type: "POST",                   //类型，POST或者GET
                    dataType: 'json',              //数据返回类型，可以是xml、json等
                    success: function (data) {      //成功，回调函数
	                    if(data == 0){
	                    	alert("亲,你输入的原密码不正确");
	                    	document.getElementById("yuan").value=null;
	                    }
                    }
                });
            });
        });
	</script>
	 <script>
        function check2pwd() {  
            if(xin.value != que.value) {  
            	alert("亲，两次输入的密码不一致呦。");
        		document.getElementById("xin").value=null;
        		document.getElementById("que").value=null;
            }  
        }
     </script>
</body>
</html>
