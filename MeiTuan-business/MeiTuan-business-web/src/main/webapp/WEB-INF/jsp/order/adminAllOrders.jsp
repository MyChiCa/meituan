<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>后台管理</title>
<meta name="description" content="">
<meta name="author" content="templatemo">
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700'
	rel='stylesheet' type='text/css'>
<!-- JS -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/js/jquery-1.11.2.min.js"></script>
<link href="${pageContext.request.contextPath}/css/font-awesome.min.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<link href="${pageContext.request.contextPath}/css/templatemo-style.css"
	rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/sweetalert.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/sweetalert.css">
<style>
.show-span {
	border: none !important;
}
</style>
</head>
<body>
	<div id=total name=total>
		<!-- Left column -->
		<div class="templatemo-flex-row">
			<jsp:include page="../sidebar.jsp" />
			<!-- Main content -->
			<div class="templatemo-content col-1 light-gray-bg">
				<jsp:include page="OrdersNav.jsp" />
				<div class="templatemo-content-container">
					<div class="templatemo-content-widget no-padding">
						<div class="panel panel-default table-responsive">
							<table id="RstrInfo"
								class="table table-striped table-bordered templatemo-user-table">
								<thead>
									<tr>
										<td><a href="" class="white-text templatemo-sort-by">订单号<span
												class="caret"></span></a></td>
										<td><a href="" class="white-text templatemo-sort-by">用户<span
												class="caret"></span></a></td>
										<td><a href="" class="white-text templatemo-sort-by">下单时间<span
												class="caret"></span></a></td>
										<td><a href="" class="white-text templatemo-sort-by">订单状态<span
												class="caret"></span></a></td>
										<td>接单</td>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${requestScope.pages.getList()}" var="orders"
										varStatus="num">
										<tr>
											<td>${orders.orderId}</td>
											<td>${orders.userName}</td>
											<td><fmt:formatDate value="${orders.orderTime}" pattern="MM-dd HH：mm"/></td>
											<td>
											<c:choose>
											<c:when test="${orders.orderState == 0}">
											 未支付订单
											</c:when>
											<c:when test="${orders.orderState == 1}">
											 未接订单
											</c:when>
											<c:when test="${orders.orderState ==2}">
											 已接订单
											</c:when>
											<c:when test="${orders.orderState ==3}">
											 已完成订单
											</c:when>
											<c:otherwise>
											 已取消订单
											</c:otherwise>
											</c:choose>
								            </td>
											<td style="text-align:center;">
												<a href="#" onclick="AcceptOrders(${orders.orderId},${orders.orderState})" class="templatemo-edit-btn" data-toggle="modal">接单</a>
												<a href="#" onclick="CancelOrders(${orders.orderId},${orders.orderState})" class="templatemo-edit-btn" data-toggle="modal">取消订单</a>
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>

							<div class="message">
								共<i class="blue">${requestScope.pages.total}</i>条记录，当前显示第&nbsp;<i
									class="blue">${requestScope.pages.pageNum}/${requestScope.pages.pages}</i>&nbsp;页
							</div>
							<div style="text-align:center;">
								<ul class="pagination">
									<c:if test="${!requestScope.pages.isFirstPage}">
										<li><a
											href="javascript:queryAllPerson(${requestScope.pages.firstPage}, ${requestScope.pages.pageSize});">首页</a></li>
										<li><a
											href="javascript:queryAllPerson(${requestScope.pages.prePage}, ${requestScope.pages.pageSize});">上一页</a></li>
									</c:if>
									<c:forEach items="${requestScope.pages.navigatepageNums}"
										var="navigatepageNum">

										<c:if test="${navigatepageNum==requestScope.pages.pageNum}">
											<li class="active"><a
												href="javascript:queryAllPerson(${navigatepageNum}, ${requestScope.pages.pageSize});">${navigatepageNum}</a></li>
										</c:if>
										<c:if test="${navigatepageNum!=requestScope.pages.pageNum}">
											<li><a
												href="javascript:queryAllPerson(${navigatepageNum}, ${requestScope.pages.pageSize});">${navigatepageNum}</a></li>
										</c:if>
									</c:forEach>
									<c:if test="${!requestScope.pages.isLastPage}">
										<li><a
											href="javascript:queryAllPerson(${requestScope.pages.nextPage}, ${requestScope.pages.pageSize});">下一页</a></li>
										<li><a
											href="javascript:queryAllPerson(${requestScope.pages.lastPage}, ${requestScope.pages.pageSize});">最后一页</a></li>
									</c:if>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="path" style="display: none;">${pageContext.request.contextPath}</div>
	<!-- jQuery -->
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/templatemo-script.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {});
		function queryAllPerson(pageNum, pageSize) {
			$("#total").load("http://localhost:8080/order/showData?pageNum=" + pageNum + "&pageSize=" + pageSize);
		}
	</script>
	<script>
		$(document).ready(function() {
			var imageUrl = $('img.content-bg-img').attr('src');
			$('.templatemo-content-img-bg').css('background-image', 'url(' + imageUrl + ')');
			$('img.content-bg-img').hide();
		});
	</script>
<script type="text/javascript">
	function CancelOrders(orderId, orderState){
	     var ordeId = orderId;
	     var ordeState = orderState;
	     if(ordeState==1){
	         window.location.href="${pageContext.request.contextPath}/order/CancelOrder?orderId="+ordeId;
	     }
	     else if(ordeState==0){
	         alert("该订单无法操作");
	     }
	     else if(ordeState==4){
	         alert("该订单已取消");
	     }
	     else if(ordeState==3){
	         alert("已完成该订单，无法取消");
	     }
	     else{
	         alert("已接单，无法取消订单。");
	     }
	}
</script>
<script type="text/javascript">
      function AcceptOrders(orderId, orderState){
         var ordeId=orderId;
         var ordeState=orderState;
         if(ordeState==1){
             window.location.href="${pageContext.request.contextPath}/order/updateOrderState?orderId="+ordeId;
         }
         else if(ordeState==2){
             alert("该订单已完成接单");
          }
          else if(ordeState==0){
             alert("无法操作该订单");
          }
          else if(ordeState==3){
             alert("该订单已完成交易");
          }
          else{
             alert("该订单已取消");
          }
      }
</script>
</body>
</html>
