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
<link type="text/css" rel="stylesheet" href="${pageContent.request.contextPath }/css/mycss/gulugulu.css"></link>
<link rel="stylesheet" type="text/css" href="${pageContent.request.contextPath }/css/mycss/base.css"></link>
<script type="text/javascript" src="${pageContent.request.contextPath }/js/jquery-3.3.1.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		
		$("#link1").hide();
		$("#link2").hide();
		$("#link3").next().hide();
		$("#link4").next().hide();
		$("#link5").next().hide();
		$("#link6").next().hide();
		$("#link7").next().hide();
		$("#link10").next().hide();
		$("#link11").next().hide();
		$("#link12").next().hide();
		
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
		
		//菜单
		$("#link1").click(function(){
			$(this).hide();
			$(this).next(".menu_div").slideDown(500);
		});
		$(".up_div").click(function(){
			$(this).parent(".menu_div").slideUp(500);
			if($(this).parent(".menu_div").prev().attr("id") == "link1")
				$("#link1").delay(500).show();
			else if($(this).parent(".menu_div").prev().attr("id") == "link2")
				$("#link2").delay(500).show();
			else if($(this).parent(".menu_div").prev().attr("id") == "link3")
				$("#link3").delay(500).show();
			else if($(this).parent(".menu_div").prev().attr("id") == "link4")
				$("#link4").delay(500).show();
			else if($(this).parent(".menu_div").prev().attr("id") == "link5")
				$("#link5").delay(500).show();
			else if($(this).parent(".menu_div").prev().attr("id") == "link6")
				$("#link6").delay(500).show();
			else if($(this).parent(".menu_div").prev().attr("id") == "link7")
				$("#link7").delay(500).show();
			else if($(this).parent(".menu_div").prev().attr("id") == "link8")
				$("#link8").delay(500).show();
			else if($(this).parent(".menu_div").prev().attr("id") == "link9")
				$("#link9").delay(500).show();
			else if($(this).parent(".menu_div").prev().attr("id") == "link10")
				$("#link10").delay(500).show();
			else if($(this).parent(".menu_div").prev().attr("id") == "link11")
				$("#link11").delay(500).show();
			else if($(this).parent(".menu_div").prev().attr("id") == "link12")
				$("#link12").delay(500).show();
			
		});
		
		$("#link2").click(function(){
			$(this).hide();
			$(this).next(".menu_div").slideDown(500);
		});

		$("#link3").click(function(){
			$(this).hide();
			$(this).next(".menu_div").slideDown(500);
		});

		$("#link4").click(function(){
			$(this).hide();
			$(this).next(".menu_div").slideDown(500);
		});

		$("#link5").click(function(){
			$(this).hide();
			$(this).next(".menu_div").slideDown(500);
		});

		$("#link6").click(function(){
			$(this).hide();
			$(this).next(".menu_div").slideDown(500);
		});

		$("#link7").click(function(){
			$(this).hide();
			$(this).next(".menu_div").slideDown(500);
		});
		$("#link10").click(function(){
			$(this).hide();
			$(this).next(".menu_div").slideDown(500);
		});

		$("#link11").click(function(){
			$(this).hide();
			$(this).next(".menu_div").slideDown(500);
		});

		$("#link12").click(function(){
			$(this).hide();
			$(this).next(".menu_div").slideDown(500);
		});

		
		//窗口滚动事件，调节订单位置
		$(window).scroll(function(){
			if($(document).scrollTop() >= 226){
				$("#content_right").css({"position":"fixed","top":"0px"});
			}
			else{
				$("#content_right").css({"position":"absolute","top":"226px"});
			}
		});
		
		//加入购物车
		$(".buy").click(function(){
			var mythis = $(this);
			var $id = mythis.next().val();
			var str = "link"+$id+"change";
			var strleft = "link"+$id+"left";
			var strright = "link"+$id+"right";
			var strIP = "link"+$id+"Input";
			var mon = "link"+$id+"mon";
			var inp = "link"+$id+"inp"
			mythis.prev().attr("id",inp);
			$.ajax({
				url:"http://localhost:8082/orderDetails/putInCart",
				type:"get",
				data:{"id":$id},
				success:function(data){
					mythis.prev().val(data.number)
					mythis.prev().show();
					mythis.prev().attr("id",inp);
					$("#cart_head_div1 img").attr("src","${pageContent.request.contextPath }/images/gulugulu/cart.ico");
					$("#cart_head_div1 div").hide();
					$("#cart_head_div2 input").show();
 		 			if($("#"+str).length == 0){
				 		$("#menu_table").append("<tr id='"+str +"' class='first'><td class='table_font_size'>"+data.foodName+"</td><td ><span hidden='hidden'>"+$id+"</span><a href='javascript:void(0)' id='"+strleft+"' class='left_a'>-</a><input type='text' value='0' class='sum_num' id='"+strIP+"'><span hidden='hidden'>"+$id+"</span><a href='javascript:void(0)' id='"+strright+"' class='right_a'>+</a></td><td>￥<span id='"+mon+"'>"+data.money+"</span></td></tr>");
							if($("#"+strIP).val() == 0)
								$("#"+strIP).val(data.number);
					}
								
					$("#menu_table").show();
					$("#count").show();
					$("#"+strIP).val(data.number);
					$("#"+mon).text(data.money)
					$("#s_money").text(data.sumMoney);
					$("#s_number").text(data.sumNumber);
					$(".table_font_size").css({"overflow":"hidden","white-space":"nowrap","text-overflow":"ellipsis"});
				},
				error:function(){
					alert("fail");
				}
					
			});
		});
		
		//减少数量
		$("#menu_table").on("click", ".left_a", function(){
			var mythis = $(this);
			var $id = $(this).prev().text();
			$.ajax({
				url:"http://localhost:8082/orderDetails/subInCart",
				type:"get",
				data:{"id":$id},
				success:function(data){
 					$("#link"+$id+"inp").val(data.number);
					$("#s_money").text(data.sumMoney);
					$("#s_number").text(data.sumNumber);
					$("#link"+$id+"Input").val(data.number);
					$("#link"+$id+"mon").text(data.money);
					if(data.sumNumber == 0){
						$("#menu_table").hide();
						$("#link"+$id+"inp").hide();
						$("#count").hide();
						$("#cart_head_div1 img").attr("src","${pageContent.request.contextPath }/images/gulugulu/shopping-cart.ico");
						$("#cart_head_div1 div").show();
						$("#cart_head_div2 input").hide();	
					}
					if(data.number == 0){
						$("#link"+$id+"change").remove();
						$("#link"+$id+"inp").hide();
					}
				},
				error:function(){
					alert("fail");
				}
					
			});
		});
			
		//增加数量
		$("#menu_table").on("click", ".right_a", function(){
			var mythis = $(this);
			var $id = $(this).prev().text();
			$.ajax({
				url:"http://localhost:8082/orderDetails/plusInCart",
				type:"get",
				data:{"id":$id},
				success:function(data){
 					$("#link"+$id+"inp").val(data.number);
					$("#s_money").text(data.sumMoney);
					$("#s_number").text(data.sumNumber);
					$("#link"+$id+"Input").val(data.number);
					$("#link"+$id+"mon").text(data.money);
				},
				error:function(){
					alert("fail");
				}
					
			});
		});
		//清空订单
		$("#mean_clean").click(function(){
			$.ajax({
				url:"http://localhost:8082/orderDetails/deleteFromCart",
				type:"get",
				success:function(data){
					$(".number").val(0);
					$(".number").hide();
					$("#menu_table").hide();
					$("#count").hide();
					$("#cart_head_div1 img").attr("src","${pageContent.request.contextPath }/images/gulugulu/shopping-cart.ico");
					$("#cart_head_div1 div").show();
					$("#cart_head_div2 input").hide();
					$(".sum_num").val(0);		
					$(".first").remove();
				},
				error:function(){
					alert("fail");
				}
			});
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
		//静态的
		/* 	$("#menu_table").on("click","#left_sub1",function(){
			$number = (parseInt)($("#number").val()) - 1;
			$("#number").val($number);
			$("#menu1 input").val($number);
			$("#money1 span").text($number*20);
			numandmoney();
			if($("#menu1 input").val() == 0){
				$("#cart_head_div1 img").attr("src","images/gulugulu/shopping-cart.ico");
				$("#cart_head_div1 div").show();
				$("#menu1").remove();
				$("#menu_table").hide();
				$("#count").hide();
				$("#number").hide();
				$("#cart_head_div2 input").hide();
			}
		});
		$("#menu_table").on("click","#right_sub1",function(){
			$number = (parseInt)($("#number").val()) + 1;
			$("#number").val($number);
			$("#menu1 input").val($number);
			$("#money1 span").text($number*20);
			numandmoney();
		});	 */
		//食物增加
/* 		$(".number~img").click(function(){
			$("#cart_head_div1 img").attr("src","images/gulugulu/cart.ico");
			$("#cart_head_div1 div").hide();
			$("#cart_head_div2 input").show();
			var $num = (parseInt)($(this).val()) + 1; 
			$(this).val($num);
			$(this).show();
			if($("#menu1").length == 0){
				$("#menu_table").append("<tr id='menu1' class='table_font_size'><td>茄子煲</td><td><a href='javascript:void(0)' id='left_sub1'>-</a><input type='text' value='0' class='sum_num'><a href='javascript:void(0)' id='right_sub1'>+</a></td><td id='money1' class='sum_mon'>￥<span>20</span></td></tr>");
				if($("#menu1 input").val() == 0)
					$("#menu1 input").val($num);
			}
			$("#menu_table").show();
			$("#count").show();
			$("#menu1 input").val($num);
			$("#money1 span").text($num*20);
			numandmoney();
		}); */
		

	});
</script>
</head>
<body>
	<div id="top">
		<ul id="top_ul">
			<c:if test="${empty sessionScope.loginUser }">
				<li class="top_ul_li_align"><a href="${pageContext.request.contextPath}/login">登录</a> | <a href="${pageContext.request.contextPath}/register">注册</a></li>
			</c:if>
			<c:if test="${!empty sessionScope.loginUser }">
				<li style="font-size:0.8em;" class="top_ul_li_align">欢迎吃货<a href="#" style="color:rgb(255,140,0)">${ sessionScope.loginUser.telephone}</a></li>
			</c:if>
			<li id="mine" >
			<ul id="top_ul_li_ul" style="position:absolute;left:1000px;top:0px;">
				<li id="me"><a>我的</a></li>
				<li  id="my_order" style="display:none;"><a href="${pageContext.request.contextPath}/">我的订单</a></li>
				<li  id="quite" style="display:none;"><a href="${pageContext.request.contextPath}/user/logout">退出登录</a></li>
			</ul>
			</li>
			<li class="top_ul_li_align" ><a href="#">入驻加盟</a></li>
		</ul>
	</div>
	<div id="search">
		<img src="${pageContent.request.contextPath }/images/register/logo.png" class="align">
		<ul id="ul">
			<li><a href="#">首页</a></li>
			<li><a href="#">我的订单</a></li>
			<li>
				<input type="text" name="search_content" placeholder="搜索店铺" id="search_content" hidden="hidden">
				<input type="button" name="search_button" value="搜索" id="search_button" disabled="disabled">
			</li>
		</ul>
	</div>
	<div id="gulugulu">
		<div id="left">
			<img src="http://www.image.bro.com/商家图标/1-1咕噜咕噜.jpg">
			<pre style="display:inline;vertical-align:40px;font-weight:bold;font-size:0.9em;">咕噜咕噜（丽日广场店）</pre>
			<ul>
				<li>营业时间  10:00-20:00</li>
				<li>商家地址  江南大道中154-156号丽日广场首层E01</li>
				<li>商家电话  02034402269</li>
			</ul>
		</div>
		<div id="right">
			<div>
				<pre>平均送餐时间</pre>
				<strong>31</strong>分钟
			</div>
			<div class="right_div">
				<pre>起送</pre>
				<strong>20</strong>元
			</div>
			<div class="right_div">
				<pre>配送费</pre>
				<strong>5</strong>元
			</div>
		</div>
	</div>
	<div id="content">
		<div id="content_left">
			<div id="navi">
				<div id="navi_head">
					<ul >
						<li><a href="">菜单</a></li>
						<li><a href="" id="assess">评价</a></li>
					</ul>
				</div>
				<hr class="hcolor">
				<div id="navi_body">
					<ul >
						<li><a href="#link1" title="新品上市">新品上市</a></li>
						<li><a href="#link2" title="尊贵套餐">尊贵套餐</a></li>
						<li><a href="#link3" title="乐享双人餐">乐享双人餐</a></li>
						<li><a href="#link4" title="咕果茶">咕果茶</a></li>
						<li><a href="#link5" title="咕丸子">咕丸子</a></li>
						<li><a href="#link6" title="咕丝滑">咕丝滑</a></li>
						<li><a href="#link7" title="咕蛋仔">咕蛋仔</a></li>
						<li><a href="#link8" title="咕噜20周年生日趴">咕噜20周年生日趴</a></li>
						<li><a href="#link9" title="潮汕特产小吃">潮汕特产小吃</a></li>
						<li><a href="#link10" title="咕雪葩">咕雪葩</a></li>
						<li><a href="#link11" title="美味搭配">美味搭配</a></li>
						<li><a href="#link12" title="特惠专区">特惠专区</a></li>
					</ul>
				</div>
			</div>
			
			<div id="dish">
				<div id="link1" class="link">
					<div>新品上市</div>
					<img src="${pageContent.request.contextPath }/images/gulugulu/show.png">
				</div>
				<!-- hidden="hidden" -->
				<div class="menu_div">
					<div class="up_div">
						<h3>新品上市</h3>
					</div>
					<div class="down_div" >
						<ul>
						<c:forEach items="${list1 }" var="list">
							<li>
								<img src="${list.foodImage }" class="down_div_img">
								<pre>${list.foodName}</pre>
								<strong>￥${list.foodPrice}</strong>
								<div class="buy_it">
									<input class="number" type="text" readonly="readonly" value="0">
									<img src="${pageContent.request.contextPath }/images/gulugulu/plus2.png" class="buy">
									<input type="text" value="${list.foodId }" hidden="hidden">
								</div>
							</li>
						</c:forEach>	
						</ul>
					</div>
				</div>
				
				
				<div id="link2" class="link">
					<div>尊贵套餐</div>
					<img src="${pageContent.request.contextPath }/images/gulugulu/show.png">
				</div>
				<div class="menu_div">
					<div class="up_div">
						<h3>尊贵套餐</h3>
					</div>
					
					<div class="down_div" >
						<ul>
						<c:forEach items="${list2 }" var="list">
							<li>
								<img src="${list.foodImage }" class="down_div_img" title="${list.foodName}">
								<span>${list.foodName}</span>
								<strong>￥${list.foodPrice}</strong>
								<div class="buy_it">
									<!-- <strong id="number" style="visibility:hidden;">hello</strong> -->
									<input type="text" readonly="readonly" value="0" class="number">
									<img src="${pageContent.request.contextPath }/images/gulugulu/plus2.png" class="buy">
									<input type="text" value="${list.foodId }" hidden="hidden">
								</div>
							</li>
						</c:forEach>	
						</ul>
					</div>
				</div>
	
				
				<div id="link3" class="link">
					<div>乐享双人餐</div>
					<img src="${pageContent.request.contextPath }/images/gulugulu/show.png">
				</div>
				<div class="menu_div">
					<div class="up_div">
						<h3>乐享双人餐</h3>
					</div>
					
					<div class="down_div" >
						<ul>
						<c:forEach items="${list3 }" var="list">
							<li>
								<img src="${list.foodImage }" class="down_div_img" title="${list.foodName}">
								<span>${list.foodName}</span>
								<strong>￥${list.foodPrice}</strong>
								<div class="buy_it">
									<!-- <strong id="number" style="visibility:hidden;">hello</strong> -->
									<input type="text" readonly="readonly" value="0" class="number">
									<img src="${pageContent.request.contextPath }/images/gulugulu/plus2.png" class="buy"> 
									<input type="text" value="${list.foodId }" hidden="hidden">
								</div>
							</li>
						</c:forEach>	
						</ul>
					</div>
				</div>
				
				<div id="link4" class="link">
					<div>咕果茶</div>
					<img src="${pageContent.request.contextPath }/images/gulugulu/show.png">
				</div>
				<div class="menu_div">
					<div class="up_div">
						<h3>咕果茶</h3>
					</div>
					
					<div class="down_div" >
						<ul>
						<c:forEach items="${list4 }" var="list">
							<li>
								<img src="${list.foodImage }" class="down_div_img" title="${list.foodName}">
								<span>${list.foodName}</span>
								<strong>￥${list.foodPrice}</strong>
								<div class="buy_it">
									<!-- <strong id="number" style="visibility:hidden;">hello</strong> -->
									<input type="text" readonly="readonly" value="0" class="number">
									<img src="${pageContent.request.contextPath }/images/gulugulu/plus2.png" class="buy">
									<input type="text" value="${list.foodId }" hidden="hidden">
								</div>
							</li>
						</c:forEach>	
						</ul>
					</div>
				</div>
				
				<div id="link5" class="link">
					<div>咕丸子</div>
					<img src="${pageContent.request.contextPath }/images/gulugulu/show.png">
				</div>
				<div class="menu_div">
					<div class="up_div">
						<h3>咕丸子</h3>
					</div>
					
					<div class="down_div" >
						<ul>
						<c:forEach items="${list5 }" var="list">
							<li>
								<img src="${list.foodImage }" class="down_div_img" title="${list.foodName}">
								<span>${list.foodName}</span>
								<strong>￥${list.foodPrice}</strong>
								<div class="buy_it">
									<!-- <strong id="number" style="visibility:hidden;">hello</strong> -->
									<input type="text" readonly="readonly" value="0" class="number">
									<img src="${pageContent.request.contextPath }/images/gulugulu/plus2.png" class="buy">
									<input type="text" value="${list.foodId }" hidden="hidden">
								</div>
							</li>
						</c:forEach>	
						</ul>
					</div>
				</div>
				
				<div id="link6" class="link">
					<div>咕丝滑</div>
					<img src="images/gulugulu/show.png">
				</div>
				<div class="menu_div">
					<div class="up_div">
						<h3>咕丝滑</h3>
					</div>
					
					<div class="down_div" >
						<ul>
						<c:forEach items="${list6 }" var="list">
							<li>
								<img src="${list.foodImage }" class="down_div_img" title="${list.foodName}">
								<span>${list.foodName}</span>
								<strong>￥${list.foodPrice}</strong>
								<div class="buy_it">
									<!-- <strong id="number" style="visibility:hidden;">hello</strong> -->
									<input type="text" readonly="readonly" value="0" class="number">
									<img src="${pageContent.request.contextPath }/images/gulugulu/plus2.png" class="buy">
									<input type="text" value="${list.foodId }" hidden="hidden">
								</div>
							</li>
						</c:forEach>	
						</ul>
					</div>
				</div>
				
				<div id="link7" class="link">
					<div>咕蛋仔</div>
					<img src="${pageContent.request.contextPath }/images/gulugulu/show.png">
				</div>
				<div class="menu_div">
					<div class="up_div">
						<h3>咕蛋仔</h3>
					</div>
					
					<div class="down_div" >
						<ul>
						<c:forEach items="${list7 }" var="list">
							<li>
								<img src="${list.foodImage }" class="down_div_img" title="${list.foodName}">
								<span>${list.foodName}</span>
								<strong>￥${list.foodPrice}</strong>
								<div class="buy_it">
									<!-- <strong id="number" style="visibility:hidden;">hello</strong> -->
									<input  type="text" readonly="readonly" value="0" class="number">
									<img src="${pageContent.request.contextPath }/images/gulugulu/plus2.png" class="buy">
									<input type="text" value="${list.foodId }" hidden="hidden">
								</div>
							</li>
						</c:forEach>	
						</ul>
					</div>
				</div>
				
				<div id="link8" class="link">
					<div>咕噜20周年生日趴</div>
					<img src="${pageContent.request.contextPath }/images/gulugulu/show.png">
				</div>
				<div id="link9" class="link">
					<div>潮汕特产小吃</div>
					<img src="${pageContent.request.contextPath }/images/gulugulu/show.png">
				</div>
				
				<div id="link10" class="link">
					<div>咕雪葩</div>
					<img src="${pageContent.request.contextPath }/images/gulugulu/show.png">
				</div>
				<div class="menu_div">
					<div class="up_div">
						<h3>咕雪葩</h3>
					</div>
					<div class="down_div" >
						<ul>
						<c:forEach items="${list8 }" var="list">
							<li>
								<img src="${list.foodImage }" class="down_div_img" title="${list.foodName}">
								<span>${list.foodName}</span>
								<strong>￥${list.foodPrice}</strong>
								<div class="buy_it">
									<!-- <strong id="number" style="visibility:hidden;">hello</strong> -->
									<input  type="text" readonly="readonly" value="0" class="number">
									<img src="${pageContent.request.contextPath }/images/gulugulu/plus2.png" class="buy">
									<input type="text" value="${list.foodId }" hidden="hidden">
								</div>
							</li>
						</c:forEach>	
						</ul>
					</div>
				</div>
				
				<div id="link11" class="link">
					<div>美味搭配</div>
					<img src="${pageContent.request.contextPath }/images/gulugulu/show.png">
				</div>
				<div class="menu_div">
					<div class="up_div">
						<h3>美味搭配</h3>
					</div>
					<div class="down_div" >
						<ul>
						<c:forEach items="${list9 }" var="list">
							<li>
								<img src="${list.foodImage }" class="down_div_img" title="${list.foodName}">
								<span>${list.foodName}</span>
								<strong>￥${list.foodPrice}</strong>
								<div class="buy_it">
									<!-- <strong id="number" style="visibility:hidden;">hello</strong> -->
									<input  type="text" readonly="readonly" value="0" class="number">
									<img src="${pageContent.request.contextPath }/images/gulugulu/plus2.png" class="buy">
									<input type="text" value="${list.foodId }" hidden="hidden">
								</div>
							</li>
						</c:forEach>	
						</ul>
					</div>
				</div>
				
				<div id="link12" class="link">
					<div>特惠专区</div>
					<img src="${pageContent.request.contextPath }/images/gulugulu/show.png">
				</div>
				<div class="menu_div">
					<div class="up_div">
						<h3>特惠专区</h3>
					</div>
				<div class="down_div" >
					<ul>
						<c:forEach items="${list10 }" var="list">
							<li>
								<img src="${list.foodImage }" class="down_div_img" title="${list.foodName}">
								<span>${list.foodName}</span>
								<strong>￥${list.foodPrice}</strong>
								<div class="buy_it">
									<!-- <strong id="number" style="visibility:hidden;">hello</strong> -->
									<input type="text" readonly="readonly" value="0" class="number">
									<img src="${pageContent.request.contextPath }/images/gulugulu/plus2.png" class="buy">
									<input type="text" value="${list.foodId }" hidden="hidden">
								</div>
							</li>
						</c:forEach>	
					</ul>
				</div>
			</div>
			</div>
		</div>
		
		<div id="content_right">
			<form action="${pageContext.request.contextPath }/order/enjoyYourself?id=1" method="post">
				<div id="content_right">
					<div id="cart_head">
						<div id="cart_head_div1">
							<img alt="" src="${pageContent.request.contextPath }/images/gulugulu/shopping-cart.ico">
							<div>空空如也哦!</div>
						</div>
						<div id="cart_head_div2">
							<input type="submit" value="立即下单">
						</div>
					</div>
					<div id="cart">
						<table width="100%" id="menu_table">
							<tr>
								<th>菜品</th>
								<th>数量</th>
								<th>价格</th>
							</tr>
						</table>
						<hr>
						<div id="count">
							<input type="button" value="清空菜品" id="mean_clean">
							<span>共<strong id="s_number">0</strong>份，共计<strong id="s_money">0</strong>元</span>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	
	<iframe src="${pageContext.request.contextPath }/footer" frameborder="0" width="100%"></iframe>
	<script type="text/javascript">
		function numandmoney(){
			//计算总的份数
			var sumNumber = 0;
			$(".sum_num").each(function(){
				sumNumber = sumNumber+(parseInt)($(this).val());
			});
			$("#s_number").text(sumNumber);
			//计算总的钱
			var sumMoney = 0;
			$(".sum_mon span").each(function(){
				sumMoney = sumMoney+(parseInt)($(this).text());
			});
			$("#s_money").text(sumMoney);
		}

	</script>
</body>
</html>