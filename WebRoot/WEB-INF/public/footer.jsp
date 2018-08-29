<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<div id="footer" class="footer" style="display: block;margin-top: 100px">

		<div id="footer_ensure" class="footer_ensure">           
         	<img src="admin/img/site/ensure.png">
    	</div>

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
