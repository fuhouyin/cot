<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!--[if IE 9]>         <html class="no-js lt-ie10" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html class="no-js" lang="en"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
		<link rel="shortcut icon" href="admin/img/lion.ico" />
        <title>校园网上交易系统-账号注册</title>

        <meta name="description" content="AppUI is a Web App Bootstrap Admin Template created by pixelcave and published on Themeforest">
        <meta name="author" content="pixelcave">
        <meta name="robots" content="noindex, nofollow">

        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
        
        <!-- css -->
        <!-- Bootstrap is included in its original form, unaltered -->
        <link rel="stylesheet" href="admin/css/bootstrap.min.css">

        <!-- Related styles of various icon packs and plugins -->
        <link rel="stylesheet" href="admin/css/plugins.css">

        <!-- The main stylesheet of this template. All Bootstrap overwrites are defined in here -->
        <link rel="stylesheet" href="admin/css/main.css">

        <!-- Include a specific file here from css/themes/ folder to alter the default theme of the template -->

        <!-- The themes stylesheet of this template (for using specific theme color in individual elements - must included last) -->
        <link rel="stylesheet" href="admin/css/themes.css">
        <!-- END css -->
        <!-- Modernizr (浏览器功能检测库) -->
        <script src="admin/js/vendor/modernizr-3.3.1.min.js"></script>
    </head>
    <body>
        <!-- 呼吸背景-->
        <!-- 分辨率1280x1280像素 -->
        <img src="admin/img/placeholders/layout/loginBackground.png" alt="Full Background" class="full-bg animation-pulseSlow">
        <!-- END 呼吸背景 -->

        <!-- 注册器开始 -->
        <div id="login-container"style="margin-left:150px">
            <!-- logo -->
            <h1 class="h2 text-light text-center push-top-bottom animation-pullDown">
                <img src="admin/img/cat.png" width="50"><strong >校园网上交易系统</strong>
            </h1>
            <!-- END logo -->

            <!-- 注册板块 -->
            <div class="block animation-fadeInQuick" style="background:#941818;opacity:0.5;" >
                <!-- 标题 -->
                <div class="block-title" >
                    <h2>注册入口</h2>
                </div>
                <!-- END 标题 -->

                <!-- 注册表单 -->
                <form action="zhuce" class="form-horizontal" method="post">
                    <div class="form-group">
                        <label class="col-xs-12">账号</label>
                        <div class="col-xs-12">
                            <input type="text" id="username" name="username" class="form-control" placeholder="输入账号" onkeyup="value=value.replace(/[^\0-\9\a-\z]/g,'');" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-xs-12">密码</label>
                        <div class="col-xs-12">
                            <input id="xin" type="text" name="password" class="form-control" placeholder="输入密码" onkeyup="value=value.replace(/[^\0-\9\a-\z]/g,'');" required="required">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-xs-12">确认密码</label>
                        <div class="col-xs-12">
                            <input id="que" type="text" name="qpassword" onblur="check2pwd()" class="form-control" placeholder="再次输入密码" onkeyup="value=value.replace(/[^\0-\9\a-\z]/g,'');" required="required">
                        </div>
                    </div>
                    <div class="form-group form-actions" style="color:grad">                      
                        <div class="col-xs-4 text-right" >
                            <button type="submit" class="btn btn-effect-ripple btn-sm btn-success" >提交</button>
                           	<a href="log"  class="btn btn-effect-ripple btn-sm btn-success" style="margin-right: -130px">已有账号去登陆</a>
                        </div>
                    </div>
                </form>
                
            <footer class="text-muted text-center animation-pullUp">
                <small>校园网上交易系统版权所有</small>
                <small>2018-2024</small>
            </footer>
            <!-- END 尾部 -->
        </div>
        <!-- END 注册器 -->

        <!-- jQuery, Bootstrap, jQuery plugins and Custom JS code -->
        <script src="admin/js/vendor/jquery-2.2.4.min.js"></script>
        <script src="admin/js/vendor/bootstrap.min.js"></script>
        <script src="admin/js/plugins.js"></script>
        <script src="admin/js/app.js"></script>

        <!-- 本页独占js -->
        <script src="admin/js/pages/readyLogin.js"></script>
        <script>$(function(){ ReadyLogin.init(); });</script>
        <script>
	        function check2pwd() {  
	            if(xin.value != que.value) {  
	            	alert("亲，两次输入的密码不一致呦。");
	        		document.getElementById("xin").value=null;
	        		document.getElementById("que").value=null;
	            }  
	        }
        </script>
        <script>
	        $(function () {
	            $("#username").blur(function () {
	                $.ajax({
	                    url: "isuser",        //后台url
	                    data: {                          //数据
	                        username:$("input[name='username']").val()
	                    },
	                    type: "POST",                   //类型，POST或者GET
	                    dataType: 'json',              //数据返回类型，可以是xml、json等
	                    success: function (data) {      //成功，回调函数
		                    if(data == 1){
		                    	alert("亲,账号 "+$("input[name='username']").val()+" 已存在");
		                    	document.getElementById("username").value=null;
		                    }
	                    }
	                });
	            });
	
	        });
		</script>
    </body>
</html>
