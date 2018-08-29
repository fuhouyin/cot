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
		<a href="main">
			<span style="color:#C40000;margin:0px" class=" glyphicon glyphicon glyphicon-home redColor"></span>
			校易首页
		</a>	
		
		<span>喵，欢迎  ${ sessionScope.user.username} 来到校易</span>
			<a href="my">个人中心</a>	
			<a href="logout">注销</a>
</nav>

	<a href="main"><img id="logo" src="admin/img/site/logo.gif" class="logo"></a>
	
	<form  method="post" action="selectkeyword">	
		<div class="searchDiv">
			<input name="keyword" type="text" placeholder=" 搜索 校易 热门商品：书籍刊物  技术服务 ">
			<button  type="submit" class="searchButton">搜索</button>
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
				<span><a href="selectbytype?id=17">书籍刊物</a></span>			
			
				<span><a href="selectbytype?id=18">生活服务</a></span>			
			
				<span><a href="selectbytype?id=19">闲置旧物</a></span>			
				
				<span><a href="selectbytype?id=2">服饰商品</a></span>
				
				<span><a href="selectbytype?id=19">原创作品</a></span>						
	</div>
</div>
<div style="position: relative">
<div class="categoryMenu">
			<div cid="1" class="eachCategory">
				<span class="glyphicon glyphicon-tags"></span>
				<a href="selectbytype?id=1">
					鞋子
				</a>
			</div>
		
			<div cid="2" class="eachCategory">
				<span class="glyphicon glyphicon-user"></span>
				<a href="selectbytype?id=2">
					上装
				</a>
			</div>
		
			<div cid="3" class="eachCategory">
				<span class="glyphicon glyphicon-bookmark"></span>
				<a href="selectbytype?id=3">
					下装
				</a>
			</div>
		
			<div cid="4" class="eachCategory">
				<span class="glyphicon glyphicon-briefcase"></span>
				<a href="selectbytype?id=4">
					箱包
				</a>
			</div>
		
			<div cid="5" class="eachCategory">
				<span class="glyphicon glyphicon-road"></span>
				<a href="selectbytype?id=5">
					运动户外
				</a>
			</div>
		
			<div cid="6" class="eachCategory">
				<span class="glyphicon glyphicon-asterisk"></span>
				<a href="selectbytype?id=6">
					护肤
				</a>
			</div>
		
			<div cid="7" class="eachCategory">
				<span class="glyphicon glyphicon-thumbs-up"></span>
				<a href="selectbytype?id=7">
					腕带
				</a>
			</div>
		
			<div cid="8" class="eachCategory">
				<span class="glyphicon glyphicon-sunglasses"></span>
				<a href="selectbytype?id=8">
					眼镜
				</a>
			</div>
		
			<div cid="9" class="eachCategory">
				<span class="glyphicon glyphicon-globe"></span>
				<a href="selectbytype?id=9">
					饰品
				</a>
			</div>
		
			<div cid="10" class="eachCategory">
				<span class="glyphicon glyphicon-gift"></span>
				<a href="selectbytype?id=10">
					零食
				</a>
			</div>
		
			<div cid="11" class="eachCategory">
				<span class="glyphicon glyphicon-tint"></span>
				<a href="selectbytype?id=11">
					烟茶酒
				</a>
			</div>
		
			<div cid="12" class="eachCategory">
				<span class="glyphicon glyphicon-glass"></span>
				<a href="selectbytype?id=12">
					饮料
				</a>
			</div>
		
			<div cid="13" class="eachCategory">
				<span class="glyphicon glyphicon-apple"></span>
				<a href="selectbytype?id=13">
					水果
				</a>
			</div>
		
			<div cid="14" class="eachCategory">
				<span class="glyphicon glyphicon-star-empty"></span>
				<a href="selectbytype?id=14">
					生鲜
				</a>
			</div>
		
			<div cid="15" class="eachCategory">
				<span class="glyphicon glyphicon-bed"></span>
				<a href="selectbytype?id=15">
					床上用品
				</a>
			</div>
		
			<div cid="16" class="eachCategory">
				<span class="glyphicon glyphicon-inbox"></span>
				<a href="selectbytype?id=16">
					收纳储物
				</a>
			</div>
		
			<div cid="17" class="eachCategory">
				<span class="glyphicon glyphicon-book"></span>
				<a href="selectbytype?id=17">
					图书音像
				</a>
			</div>
		
	</div>  
</div>
<script>
$(function(){
	$("div.productsAsideCategorys div.row a").each(function(){
		var v = Math.round(Math.random() *6);
		if(v == 1)
			$(this).css("color","#87CEFA");
	});
});

</script>
	
<jsp:include page="../public/ztype.jsp"></jsp:include>

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