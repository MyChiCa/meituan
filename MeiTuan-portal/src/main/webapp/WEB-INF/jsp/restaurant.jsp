<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.MeiTuan.portal.pojo.TRestaurant" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>美食 | 美团外卖</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/mycss/restaurant.css" type="text/css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/mycss/base.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/mycss/footer.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.3.1.js" ></script>

<script type="text/javascript">
	$(document).ready(function(){
	var flag = 0;
	setInterval(nextImage, 4000);
		//hover事件
		$("#image1").hover(function(){
			$(this).css({"transform":"rotate(30deg)","transform-origin":"50px 15px"});
		}, function(){
			$(this).css("transform","rotate(0deg)");
		});
	
		$("#image2").hover(function(){
			$(this).css({"transform":"rotate(30deg)","transform-origin":"50px 15px"});
		}, function(){
			$(this).css("transform","rotate(0deg)");
		});
	
		$("#image3").hover(function(){
			$(this).css({"transform":"rotate(30deg)","transform-origin":"50px 15px"});
		}, function(){
			$(this).css("transform","rotate(0deg)");
		});
	
		$("#image5").hover(function(){
			$(this).css({"transform":"rotate(30deg)","transform-origin":"50px 15px"});
		}, function(){
			$(this).css("transform","rotate(0deg)");
		});
	
		$("#image6").hover(function(){
			$(this).css({"transform":"rotate(30deg)","transform-origin":"50px 15px"});
		}, function(){
			$(this).css("transform","rotate(0deg)");
		});
	
		$("#image7").hover(function(){
			$(this).css({"transform":"rotate(30deg)","transform-origin":"50px 15px"});
		}, function(){
			$(this).css("transform","rotate(0deg)");
		});
	
		//点击事件
		$("#image1").click(function(){
			$(this).attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi2_1.png");
			$("#image2").attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi1_2.png");
			$("#image3").attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi1_3.png");
			$("#image5").attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi1_5.png");
			$("#image6").attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi1_6.png");
			$("#image7").attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi1_7.png");
		});
	
		$("#image2").click(function(){
			$("#image1").attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi1_1.png");
			$(this).attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi2_2.png");
			$("#image3").attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi1_3.png");
			$("#image5").attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi1_5.png");
			$("#image6").attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi1_6.png");
			$("#image7").attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi1_7.png");
		});
	
	    $("#image3").click(function(){
	    	$("#image1").attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi1_1.png");
			$("#image2").attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi1_2.png");
			$(this).attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi2_3.png");
			$("#image5").attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi1_5.png");
			$("#image6").attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi1_6.png");
			$("#image7").attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi1_7.png");
	
		});
	
		$("#image5").click(function(){
			$("#image1").attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi1_1.png");
			$("#image2").attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi1_2.png");
			$("#image3").attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi1_3.png");
			$(this).attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi2_5.png");
			$("#image6").attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi1_6.png");
			$("#image7").attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi1_7.png");
		});
	
		$("#image6").click(function(){
			$("#image1").attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi1_1.png");
			$("#image2").attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi1_2.png");
			$("#image3").attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi1_3.png");
			$("#image5").attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi1_5.png");
			$(this).attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi2_6.png");
			$("#image7").attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi1_7.png");
		});
	
		$("#image7").click(function(){
			$("#image1").attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi1_1.png");
			$("#image2").attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi1_2.png");
			$("#image3").attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi1_3.png");
			$("#image5").attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi1_5.png");
			$("#image6").attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi1_6.png");
			$(this).attr("src","${pageContext.request.contextPath}/images/restaurant/nav/navi2_7.png");
		});
	
		$("#changeImage").mousemove(function(){
			$("#upImage").show();
			$("#downImage").show();
		});
	
		$("#changeImage").mouseout(function(){
			$("#upImage").hide();
			$("#downImage").hide();
		});
		
		//我的
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
	
	});
</script>
</head>
<body>
	<%
		int totalPage = (Integer)request.getAttribute("totalPage");
		int currentPage = (Integer)request.getAttribute("page");
	 %>
	<div id="top">
		<ul id="top_ul">
			<c:if test="${empty sessionScope.loginUser }">
				<li class="top_ul_li_align"><a href="/login">登录</a> | <a href="/register">注册</a></li>
			</c:if>
			<c:if test="${!empty sessionScope.loginUser }">
				<li style="font-size:0.8em;" class="top_ul_li_align">欢迎吃货<a href="#" id="userContent" style="color:rgb(255,140,0);">${ sessionScope.loginUser.telephone}</a></li>
			</c:if>
			<li id="mine">
				<ul id="top_ul_li_ul">
					<li id="me"><a>我的</a></li>
					<li style="display:none;" id="my_order"><a>我的订单</a></li>
					<li style="display:none;" id="quite"><a href="{pageContext.request.contextPath}/user/logout">退出登录</a></li>
				</ul>
			</li>
			<li class="top_ul_li_align"><a href="http://localhost:8080/business/register">入驻加盟</a></li>
		</ul>
	</div>
	<div id="search">
		<img src="${pageContext.request.contextPath}/images/register/logo.png" class="align">
		<div id="search_div">
			<input type="text" name="search_content" placeholder="搜索店铺" id="search_content" class="align">
			<input type="button" name="search_button" value="搜索" id="search_button" class="align">
		</div>
	</div>
	<div id="changeImage">
		<div id="img_show" style="border-radius:60px;">
			<div id="img_show_inner">				
<%-- 				<img src="${pageContext.request.contextPath}/images/restaurant/move/rest_01.jpg">
				<img src="${pageContext.request.contextPath}/images/restaurant/move/rest_02.jpg">
				<img src="${pageContext.request.contextPath}/images/restaurant/move/rest_03.jpg">
				<img src="${pageContext.request.contextPath}/images/restaurant/move/rest_01.jpg">
				<img src="${pageContext.request.contextPath}/images/restaurant/move/rest_02.jpg">
				<img src="${pageContext.request.contextPath}/images/restaurant/move/rest_03.jpg"> --%>
				<img src="http://www.image.bro.com/商家图标/3-3潮琪.jpg">
				<img src="http://www.image.bro.com/商家图标/1-2四姐小龙虾.jpg">
				<img src="http://www.image.bro.com/商家图标/4-4果之意.jpg">
				<img src="http://www.image.bro.com/商家图标/1-4勉记炖品皇.png">
				<img src="http://www.image.bro.com/商家图标/2-1挪威三文鱼.jpg">
				<img src="http://www.image.bro.com/商家图标/2-2加亚拉茶.jpg">
			</div>
		</div>
	 	<img src="${pageContext.request.contextPath}/images/restaurant/move/pre.png" id="upImage" onclick="preImage();">
		<img src="${pageContext.request.contextPath}/images/restaurant/move/next.png" id="downImage" onclick="nextImage();">

	</div>

	<div id="navigation">
		<img src="${pageContext.request.contextPath}/images/restaurant/nav/naviY.png" id="naviY">
		<ul id="naviX">
			<li><a href=""><img src="${pageContext.request.contextPath}/images/restaurant/nav/navi2_1.png" alt="" id="image1"></a></li>
			<li><a href="restaurantById?id=1"><img src="${pageContext.request.contextPath}/images/restaurant/nav/navi1_2.png" alt="" id="image2"></a></li>
			<li><a href="restaurantById?id=2"><img src="${pageContext.request.contextPath}/images/restaurant/nav/navi1_3.png" alt="" id="image3"></a></li>
			<li><a href="restaurantById?id=3"><img src="${pageContext.request.contextPath}/images/restaurant/nav/navi1_5.png" alt="" id="image5"></a></li>
			<li><a href="restaurantById?id=4"><img src="${pageContext.request.contextPath}/images/restaurant/nav/navi1_6.png" alt="" id="image6"></a></li>
			<li><a href="restaurantById?id=5"><img src="${pageContext.request.contextPath}/images/restaurant/nav/navi1_7.png" alt="" id="image7"></a></li>
		</ul>
	</div>
	
	<div id="gap" style="width:80%;height:30px;margin:10px auto;background-image:linear-gradient(to right, black 20%, white 50%, black 80%);
				border-radius:10px;line-height:30px;font-family:楷体;font-weight:bold;">
		<div style="margin:0 auto;width:70px;" >入驻店铺</div>
	</div>
	
	<div id="content">
		<c:forEach items="${currentList }" var="rt">
			<div class="rest">
				<a href="${pageContext.request.contextPath}/food/gulugulu"><img alt="" src="${rt.rstrImage}"></a>
				<span>${ rt.rstrName}</span>
				<div>
					<span>起送:￥${ rt.btakeFare}</span>
					<span>配送费:￥${ rt.takeFare }</span>
					<span>均配时间:${ rt.takeTime }</span>
				</div>
			</div>
		</c:forEach>

		<table id="change">
			<tr>
				<td><a href="${pageContext.request.contextPath}/restaurant/restaurantPage?pages=1">首页</a></td>
				<td><a href="${pageContext.request.contextPath}/restaurant/restaurantPage?pages=<%=currentPage<=1?currentPage:currentPage-1%>">上一页</a></td>
				<td><a href="${pageContext.request.contextPath}/restaurant/restaurantPage?pages=<%=currentPage>=totalPage?totalPage:currentPage+1%>">下一页</a></td>
				<td><a href="${pageContext.request.contextPath}/restaurant/restaurantPage?pages=<%=totalPage %>">最后一页</a></td>
			</tr>
		</table>
	</div>
	
	<script type="text/javascript">
		//轮播图中内div走过的距离
		var temp = 0;
		var img_show_inner = document.getElementById("img_show_inner");
		function nextImage(){
			if(temp == 0){
				temp = temp - 700;
				img_show_inner.style.transform = 'translateX(-700px)';
			}else if(temp == -700){
				temp = temp - 700;
				img_show_inner.style.transform = 'translateX(-1400px)';
			}else if(temp == -1400){
				temp = temp - 700;
				img_show_inner.style.transform = 'translateX(-2100px)';
			}else if(temp == -2100){
				temp = temp - 700;
				img_show_inner.style.transform = 'translateX(-2800px)';
			}else if(temp == -2800){
				temp = temp - 700;
				img_show_inner.style.transform = 'translateX(-3500px)';
			}else{
				img_show_inner.style.transform = 'translateX(0)';
				temp = temp + 3500;
			}
			//结论：
			/*
				通过style.left这个左值，要设置绝对定位
				而offsetLeft要设置相对定位，并且translate是无法改变offsetLeft的值的。
			*/
			/*else if(img_show_inner.offsetLeft<= -2800){
				img_show_inner.style.transform = 'translateX(-2100px)';
			}else if(img_show_inner.offsetLeft<= -2100){
				img_show_inner.style.transform = 'translateX(-1400px)';
			}else if(img_show_inner.offsetLeft<= -1400){
				img_show_inner.style.transform = 'translateX(-700px)';
			}else{
				img_show_inner.style.transform = 'translateX(-3500px)';
			}*/
		}
		function preImage(){
		
			if(temp == 0){
				temp = temp - 3500;
				img_show_inner.style.transform = 'translateX(-3500px)';
			}else if(temp == -700){
				temp = temp + 700;
				img_show_inner.style.transform = 'translateX(0px)';
			}else if(temp == -1400){
				temp = temp + 700;
				img_show_inner.style.transform = 'translateX(-700px)';
			}else if(temp == -2100){
				temp = temp + 700;
				img_show_inner.style.transform = 'translateX(-1400px)';
			}else if(temp == -2800){
				temp = temp + 700;
				img_show_inner.style.transform = 'translateX(-2100px)';
			}else{
				temp = temp + 700;
				img_show_inner.style.transform = 'translateX(-2800px)';
			}
		}
	</script>
	<%-- <iframe src="${pageContext.request.contextPath}/footer" frameborder="0" width="100%"></iframe> --%>
</body>
</html>