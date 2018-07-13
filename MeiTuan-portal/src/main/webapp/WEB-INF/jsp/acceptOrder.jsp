<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0, 
	minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"> -->
<title>咕噜咕噜（丽日广场店） | 美团外卖</title>
<link type="text/css" rel="stylesheet" href="${pageContent.request.contextPath }/css/mycss/acceptOrder.css"></link>
<link rel="stylesheet" type="text/css" href="${pageContent.request.contextPath }/css/mycss/base.css"></link>
<script type="text/javascript" src="${pageContent.request.contextPath }/js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		//搜索
		$("#search_button").mousemove(function(){
			$("#search_content").show(400);
			$('#search_content').removeAttr("disabled");
		});
		
		$("#left").hover(function(){
			$("#gulugulu").css({"overflow":"visible"});
			$(this).css({"border":"1px solid rgb(0,255,255)"});
		},function(){
			$("#gulugulu").css("overflow","hidden");
			$(this).css({"border":""});
		});
		

		//我的
		var flag = 0;
		$("#me").click(function(){
			if(flag == 0){
		 		$("#my_order").show();
				$("#quite").show();
				flag=1;
			}
			else{
				$("#my_order").hide();
				$("#quite").hide();
				flag=0;
			}
		});
		
		//确认收货
		$("#confirm_get").click(function(){
			window.location.href="http://localhost:8082/order/fihishOrder";
		});
		
		//是否接单
		$("#check_order").click(function(){
			window.location.href="http://localhost:8082/order/checkOrder";
		});

	});
</script>
</head>
<body>
	<div id="top">
		<ul id="top_ul">
			<c:if test="${empty sessionScope.loginUser }">
				<li class="top_ul_li_align"><a href="login">登录</a> | <a href="register">注册</a></li>
			</c:if>
			<c:if test="${!empty sessionScope.loginUser }">
				<li style="font-size:0.8em;" class="top_ul_li_align">欢迎吃货<a href="#" style="color:rgb(255,140,0)">${ sessionScope.loginUser.telephone}</a></li>
			</c:if>
			<li id="mine">
			<ul id="top_ul_li_ul">
				<li id="me"><a>我的</a></li>
				<li  id="my_order" style="display:none;"><a href="{pageContext.request.contextPath}/">我的订单</a></li>
				<li  id="quite" style="display:none;"><a href="{pageContext.request.contextPath}/user/logout">退出登录</a></li>
			</ul>
			</li>
			<li class="top_ul_li_align"><a href="#" >入驻加盟</a></li>
		</ul>
	</div>
	<div id="search">
		<img src="${pageContent.request.contextPath }/images/register/logo.png" class="align">
		<ul id="ul">
			<li><a href="#">首页</a></li>
			<li>
				<input type="text" name="search_content" placeholder="搜索店铺" id="search_content" hidden="hidden">
				<input type="button" name="search_button" value="搜索" id="search_button" disabled="disabled">
			</li>
		</ul>
	</div>
	<div id="orderContent">
		<div id="orderContent_left">
			<div>来自<strong><a href="${pageContext.request.contextPath }/food/gulugulu" style="color:rgb(255,140,0)">${rstrName}</a></strong>的清单：</div>
			<table id="left_table">
				<tr><th>菜品</th><th>价格</th></tr>
				<tr><td colspan="2"><hr></td></tr>
				<c:forEach items="${ orderList}" var="order">
					<tr><td>${order.foodName}</td><td>${order.foodMoney}</td></tr>
				</c:forEach>
				<tr><td>配送费</td><td>${takeFare}</td></tr>
				<tr><td colspan="2"><hr></td></tr>
				<tr><td>合计</td><td style="color:red;">${plustakeFare}</td></tr>
			</table>
		</div>
		<div id="orderContent_right">
			<div style="width:250px;margin:0 auto;color:rgb(150,150,150)">
				<c:choose>
					<c:when test="${orderHead.orderState == 1}">
						已支付，等待接单哦！<button id="check_order" >是否已接单呢？？？</button>
					<img alt="" src="${pageContext.request.contextPath}/images/accept/load.gif" class="pict">
					</c:when>
					<c:when test="${orderHead.orderState == 2}">
						您的外卖已在路上！
						<br><br>
						<button id="confirm_get" >确认收货</button>
					<img alt="" src="${pageContext.request.contextPath}/images/accept/send.png" class="pict">
					</c:when>
				</c:choose>
			</div>
		</div>
	</div>
	
	<iframe src="${pageContext.request.contextPath }/footer" frameborder="0" width="100%"></iframe>

</body>
</html>