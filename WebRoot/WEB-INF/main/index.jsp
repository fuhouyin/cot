<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<link rel="shortcut icon" href="admin/img/lion.ico" />
	<script src="admin/study/js/jquery/2.0.0/jquery.min.js"></script>
	<link href="admin/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
	<script src="admin/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
	<link href="admin/show.css" rel="stylesheet">	
</head>

<body>

<nav class="top ">
		<span>校易首页</span>
		<span>喵，欢迎您来到校易</span>
			<a href="log">请登录</a>
			<a href="zc">免费注册</a>	
</nav>

	<img id="logo" src="admin/img/site/logo.gif" class="logo">
	
	<form  method="post" action="selectkeyword">	
		<div class="searchDiv">
			<input name="keyword" type="text" placeholder=" 搜索 校易 热门商品：书籍刊物  技术服务 ">
			<button  type="submit" class="searchButton">搜索</button>
			<div class="searchBelow">
				<span><a href="#nowhere">手机</a><span>|</span></span>			
				<span><a href="#nowhere">杂志</a><span>|</span></span>			
				<span><a href="#nowhere">零食</a><span>|</span></span>			
				<span><a href="#nowhere">饮品</a><span>|</span></span>
				<span><a href="#nowhere">电脑</a></span>		
			</div>			
		</div>
	</form>	

<title>校园网上交易系统官网</title>

<div class="homepageDiv">	
<script>
$(function(){
	$("div.eachCategory").mouseenter(function(){
		var cid = $(this).attr("cid");
		$("div.productsAsideCategorys[cid="+cid+"]").show();
	});
	$("div.eachCategory").mouseleave(function(){
		var cid = $(this).attr("cid");
		$("div.productsAsideCategorys[cid="+cid+"]").hide();		
		
	});
	
	$("div.productsAsideCategorys").mouseenter(function(){
		$(this).show();
	});
	
	$("div.productsAsideCategorys").mouseleave(function(){
		$(this).hide();
	});
	
	$("div.rightMenu span").mouseenter(function(){
		var left = $(this).position().left;
		var top = $(this).position().top;
		var width = $(this).css("width");
		var destLeft = parseInt(left) + parseInt(width)/2;
		$("img#catear").css("left",destLeft);
		$("img#catear").css("top",top-20);
		$("img#catear").fadeIn(500);
				
	});
	$("div.rightMenu span").mouseleave(function(){
		$("img#catear").hide();
	});
	
	var left = $("div#carousel-of-product").offset().left;
	$("div.categoryMenu").css("left",left-20);
	$("div.categoryWithCarousel div.head").css("margin-left",left);
	$("div.productsAsideCategorys").css("left",left-20);
	
});
</script>

<img src="admin/img/site/catear.png" id="catear" class="catear"/>
	
<div class="categoryWithCarousel">

<div class="headbar show1" >
	
	<div class="head ">
		<span style="margin-left:10px" class="glyphicon glyphicon-th-list"></span>
		<span style="margin-left:10px" >商品分类</span>
	</div>
		
	<div class="rightMenu">
				<span><a href="selectbytype?type=1">书籍刊物</a></span>			
			
				<span><a href="selectbytype?type=2">技术服务</a></span>			
			
				<span><a href="selectbytype?type=3">二手商品</a></span>			
				
				<span><a href="selectbytype?type=4">服饰商品</a></span>
				
				<span><a href="selectbytype?type=5">原创作品</a></span>						
	</div>
</div>
<div style="position: relative">
<div class="categoryMenu">
			<div cid="83" class="eachCategory">
				<span class="glyphicon glyphicon-link"></span>
				<a href="#nowhere">
					鞋子
				</a>
			</div>
		
			<div cid="82" class="eachCategory">
				<span class="glyphicon glyphicon-link"></span>
				<a href="#nowhere">
					上装
				</a>
			</div>
		
			<div cid="81" class="eachCategory">
				<span class="glyphicon glyphicon-link"></span>
				<a href="#nowhere">
					下装
				</a>
			</div>
		
			<div cid="80" class="eachCategory">
				<span class="glyphicon glyphicon-link"></span>
				<a href="#nowhere">
					箱包
				</a>
			</div>
		
			<div cid="79" class="eachCategory">
				<span class="glyphicon glyphicon-link"></span>
				<a href="#nowhere">
					运动户外
				</a>
			</div>
		
			<div cid="78" class="eachCategory">
				<span class="glyphicon glyphicon-link"></span>
				<a href="#nowhere">
					护肤
				</a>
			</div>
		
			<div cid="77" class="eachCategory">
				<span class="glyphicon glyphicon-link"></span>
				<a href="#nowhere">
					腕带
				</a>
			</div>
		
			<div cid="76" class="eachCategory">
				<span class="glyphicon glyphicon-link"></span>
				<a href="#nowhere">
					眼镜
				</a>
			</div>
		
			<div cid="75" class="eachCategory">
				<span class="glyphicon glyphicon-link"></span>
				<a href="#nowhere">
					饰品
				</a>
			</div>
		
			<div cid="74" class="eachCategory">
				<span class="glyphicon glyphicon-link"></span>
				<a href="#nowhere">
					零食
				</a>
			</div>
		
			<div cid="73" class="eachCategory">
				<span class="glyphicon glyphicon-link"></span>
				<a href="#nowhere">
					烟茶酒
				</a>
			</div>
		
			<div cid="72" class="eachCategory">
				<span class="glyphicon glyphicon-link"></span>
				<a href="#nowhere">
					饮料
				</a>
			</div>
		
			<div cid="71" class="eachCategory">
				<span class="glyphicon glyphicon-link"></span>
				<a href="#nowhere">
					水果
				</a>
			</div>
		
			<div cid="69" class="eachCategory">
				<span class="glyphicon glyphicon-link"></span>
				<a href="#nowhere">
					生鲜
				</a>
			</div>
		
			<div cid="68" class="eachCategory">
				<span class="glyphicon glyphicon-link"></span>
				<a href="#nowhere">
					床上用品
				</a>
			</div>
		
			<div cid="64" class="eachCategory">
				<span class="glyphicon glyphicon-link"></span>
				<a href="#nowhere">
					收纳储物
				</a>
			</div>
		
			<div cid="60" class="eachCategory">
				<span class="glyphicon glyphicon-link"></span>
				<a href="#nowhere">
					图书音像
				</a>
			</div>
		
	</div>  
</div>



<div id="carousel-of-product"  class="carousel-of-product carousel slide1" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-of-product" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-of-product" data-slide-to="1"></li>
    <li data-target="#carousel-of-product" data-slide-to="2"></li>
    <li data-target="#carousel-of-product" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img class="carousel carouselImage" src="admin/img/lunbo/1.jpg" >
    </div>
    <div class="item">
      <img  class="carouselImage" src="admin/img/lunbo/2.jpg" >
    </div>
    <div class="item">
		<img  class="carouselImage" src="admin/img/lunbo/3.jpg" >
    </div>

    <div class="item">
        <img  class="carouselImage" src="admin/img/lunbo/4.jpg" >
    </div>

  </div>

</div>	

<div class="carouselBackgroundDiv">
</div>

</div>


<jsp:include page="../public/footer.jsp"></jsp:include>
</body>
</html>