<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<%@ page import="com.MeiTuan.portal.pojo.OrderExtend" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>确认订单 | 美团</title>
    <script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/shopcart.css">
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/sort.js"></script>
    <script src="${pageContext.request.contextPath}/js/holder.js"></script>
    <script src="${pageContext.request.contextPath}/js/sweetalert.min.js"></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/sweetalert.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/order.css">
    <script src="${pageContext.request.contextPath}/js/order.js"></script>
    <script type="text/javascript">
    	$(document).ready(function(){

    		//关闭修改
    		$("#back").click(function(){
    			$("#address_out").hide();
    			$("html,body").css({"overflow":""});
    		});
    		//显示地址
    		$("#managerAddr").on("click",function(){
    		$("#address_out").show();
    			var h = $(window).height();
    			var w = $(window).width();
				$("#address_out").css({
									   "bakcgroundColor":"black",
									   "width":w,
									   "height":h
									   });
				$("#address_in").css({
										"width":"500px",
										"margin":"200px auto"
							
				});
				//去掉滚动条
				$("html,body").css({"overflow":"hidden"})
				$("#address_out").show();
    		});
    		
    		//修改地址
			$("#confirm_modify").click(function(){
			var $addr = $("#addr").val();
				$.ajax({
					url:"http://localhost:8082/user/address",
					type:"post",
					data:{"addr":$addr},
					success:function(data){
						$("#managerAddr").prev().text(data.address);
						$("#address_out").hide();
						$("html,body").css({"overflow":""});
					},
					error:function(){
						alert("fail");
					}
				});
				
			});
			
			//取消订单
			$("#cancel-orders").click(function(){
				window.location.href="http://localhost:8082/restaurant/restaurantPage";
			});
 
    	});
    </script>
    <style type="text/css">
    	#address_out{
			display:none;
    		z-index:999;
    		background-color:rgba(120,120,120,0.5);
    		position:absolute;
    	}
    	#address_in{
    		background-color:rgb(255,255,255);
    		padding:10px 20px;
    		border:1px solid rgb(255,255,255);
    		border-radius:5px;
    	}
    	#address_in input{
    		height:40px;
			width:380px;
    		outline: none;
    		border:1px solid rgb(120,120,120);
    		border-radius:5px;
    		padding-left:10px;
    	}
    	#address_in input:hover{
    		border:1px solid rgb(30,144,255);
    		box-shadow: -0.5px -0.5px 0.5px;
    	}
    	#address_in label{
    		color:rgb(0,0,0);
    	}
    	#address_in button{
    		outline: none;
    		background-color:rgb(30,144,255);
    		color:rgb(255,255,255);
    		height:40px;
    		border:1px solid rgb(30,144,255);
    		border-radius:5px;
    		margin-left:30px;
    		width:70px;
    	}
    	#address_in button:hover{
    		background-color:rgb(10,120,255);
    	}
		#address_in div{
			width：100%;
			height:40px;
			text-align: center;
			margin-top:15px;
			vertical-align: middle;
		}
		#order_head{
			display:flex;
		}
		#order_head li:nth-child(2){
			margin-left:50px;
		}
		#order_head li:nth-child(3){
			margin-left:50px;
		}
		.product-name img{
			width:100px;
		}
    </style>
</head>
<body>

<div id="address_out">
	<div id="address_in">
		<label for="addr"></label>收货地址：<input type="text" name="addr" value="${sessionScope.loginUser.address }" id="addr">
		<div>
			<button id="back">返回</button>
			<button id="confirm_modify">确认修改</button>
		</div>
	</div>
</div>
<div id="main" class="container">
    <jsp:include page="header.jsp"/>
</div>
<div class="shopping_cart">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="account_heading account_heading_ah">
                    <h1 class="header-border">确认订单</h1>
                </div>
            </div>
        </div>

        <%--确认收货地址--%>
        <form action="${pageContext.request.contextPath}/order/updateState">
        <h4 class="header-border h4-mar">确认收货地址：<span>${ sessionScope.loginUser.address}</span><a href="javascript:void(0)" class="pull-right manage-a" id="managerAddr">管理收货地址</a></h4>
        <%--商品信息--%>
        <h4 class="header-border h4-mar-2">确认收货信息</h4>
        <div class="row">
            <div class="all_wis_frm">
                <div class="col-md-12">
                    <div class="wishlist-content wishlist-content-2">

                        <div class="wishlist-table wishlist-table-2 table-responsive">
                        	<div>
                        		<ul id="order_head">
                        			<li><span class="nobr"> 店铺：<a href="${pageContext.request.contextPath}/food/gulugulu">${rstrName}</a></span></li>
                        			<li><span class="nobr"> 订单号：${orderHead.orderId}</span></li>
                        			<c:choose>
	                        			<c:when test="${ orderHead.orderState == 0}">                        			
		                        			<li><span class="nobr"> 订单状态：未支付</span></li>
	                        			</c:when>
                        			</c:choose>
                        		</ul>
                        	</div>
                            <table id="cart-table" style="text-align: center">
                                <thead>
                                <tr>
                                    <th class="product-name product-name_2" style="text-align: center"><span
                                            class="nobr">商品</span></th>
                                    <th class="product-stock-stauts" style="text-align: center"><span class="nobr">
											名称</span></th>
                                    <th class="product-stock-stauts" style="text-align: center"><span class="nobr">
														份数 </span></th>
                                    <th class="product-add-to-cart" style="text-align: center"><span class="nobr">价格</span></th>
                                </tr>
                                </thead>
                                <tbody>
                                <%--<c:set var="oldTotalPrice" value="0"/>--%>
                                <c:forEach items="${orderList}" var="foods">
                                    <tr>
 										<td class="product-name product-name_2" style="text-align: center">
 											<img src="${foods.foodImage}">
                                        </td>
                                        <td class="product-name product-name_2" style="text-align: center">
                                        	<a>${foods.foodName}</a>
                                        </td>
                                        <td class="product-stock-status" style="text-align: center">
                                            <div class="latest_es_from_2">
                                                <span>${foods.foodNum}</span>
                                            </div>
                                        </td>
                                        <td class="product-price" style="text-align: center">
                                        	<span
                                                class="amount-list amount-list-2">￥${foods.foodMoney}
                                            </span>
                                        </td>
                                        <%--<c:set value="${oldTotalPrice+goods.price*goods.num*goods.activity.discount}" var="oldTotalPrice"/>--%>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <div class="row">
                            <div class="col-md-5 col-xs-12 form-group form-group-lg">
                                <label class="col-sm-2 control-label" for="pay-select">选择支付方式</label>
                                <div class="col-sm-10">
                                    <select class="form-control" id="pay-select">
                                        <option value="1">在线支付</option>
                                        <option value="0">货到付款</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6 col-md-offset-1 col-xs-12">
                                <div class="cart_totals">
                                    <h2>总价</h2>
                                    <table class="shop_table shop_table_responsive">
                                        <tbody>
                                        <tr class="cart-subtotal">
                                            <th>总额</th>
                                            <td data-title="Subtotal"><span
                                                    class="woocommerce-Price-amount amount"><span
                                                    class="woocommerce-Price-currencySymbol"
                                                    id="total-old" style="color:red">￥${totalMoney.money}</span>
													</span></td>
                                        </tr>
                                        <tr class="order-total">
                                            <th>实付款（含配送费）</th>
                                            <td data-title="Total"><strong> <span
                                                    class="woocommerce-Price-amount amount"><span
                                                    class="woocommerce-Price-currencySymbol"
                                                    id="total-new" style="color:red">￥${plustakeFare}</span>
														</span>
                                            </strong></td>
                                        </tr>
                                        </tbody>
                                    </table>
                                    <div class="wc-proceed-to-checkout">
                                        <input type="submit" value="结算" class="button_act button_act-tc confirm-orders pull-right">
                                        <input type="button" value="取消订单" class="button_act button_act-tc confirm-orders pull-right" id="cancel-orders">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </form>

    </div>
</div>
<div id="path" hidden>${pageContext.request.contextPath}</div>
</body>
</html>

