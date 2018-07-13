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
<link href="../../css/font-awesome.min.css"
	rel="stylesheet">
<link href="../../css/bootstrap.min.css"
	rel="stylesheet">
<link href="../../css/templatemo-style.css"
	rel="stylesheet">
<%--swal弹框--%>
<script src="../../js/sweetalert.min.js"></script>
<script src="../../js/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="../../css/sweetalert.css">  
</head>
<body>
	
	<div class="total" id="total">
		<!-- Left column -->
		<div class="templatemo-flex-row">
			<jsp:include page="../sidebar.jsp"></jsp:include>
			<!-- Main content -->
			<div class="templatemo-content col-1 light-gray-bg">
				<div class="templatemo-top-nav-container">
					<div class="row">
						<nav class="templatemo-top-nav col-lg-12 col-md-12">
							<ul class="text-uppercase">
								<li><a
									href="${pageContext.request.contextPath}/user/showData"
									class="active">所有用户</a></li>
									<li><a
									href="${pageContext.request.contextPath}/user/showData"
									class="active">个人信息</a></li>
									<li><a
									href="${pageContext.request.contextPath}/admin/login"
									class="active">注销登录</a></li>
							</ul>
						</nav>
					</div>
				</div>
				<div class="templatemo-content-container">
					<div class="templatemo-content-widget no-padding">
						<div class="panel panel-default table-responsive">
							<div id="edit_area_div">
								<table id="userinfo"
									class="table table-striped table-bordered templatemo-user-table">
									<thead>
										<tr>
											<td><a href="" class="white-text templatemo-sort-by">id<span
													class="caret"></span></a></td>
											<td><a href="" class="white-text templatemo-sort-by">用户名<span
													class="caret"></span></a></td>
											<td><a href="" class="white-text templatemo-sort-by">Email<span
													class="caret"></span></a></td>
											<td><a href="" class="white-text templatemo-sort-by">联系电话<span
													class="caret"></span></a></td>
											<td><a href="" class="white-text templatemo-sort-by">最近登录<span
													class="caret"></span></a></td>
											<td><a href="" class="white-text templatemo-sort-by">地址<span
													class="caret"></span></a></td>
										    <td><a href="" class="white-text templatemo-sort-by">维护<span
													class="caret"></span></a></td>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="a" items="${requestScope.page.getList()}">									    
											<tr>
												<td>${a.userId}</td>
												<td>${a.userName}</td>
												<td>${a.email}</td>
												<td>${a.telephone}</td>
                                                <td><fmt:formatDate value="${a.loginTime}" pattern="MM-dd HH：mm"/></td>
                                                <td>${a.address}</td>
                                                <td><a href="#" data-toggle="modal" data-target="#userEditDialog" onclick="editUserInfo(${a.userId})">编辑</a>&nbsp &nbsp<a href="${pageContext.request.contextPath}/user/delete?userId=${a.userId}" onclick="return confirm('确定删除?');window.location.reload()">删除</a></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>

								<div class="message">
									共<i class="blue">${requestScope.page.total}</i>条记录，当前显示第&nbsp;<i
										class="blue">${requestScope.page.pageNum}/${requestScope.page.pages}</i>&nbsp;页
								</div>
								<div style="text-align:center;">
									<ul class="pagination">
										<c:if test="${!requestScope.page.isFirstPage}">
											<li><a
												href="javascript:queryAllPerson(${requestScope.page.firstPage}, ${requestScope.page.pageSize});">首页</a></li>
											<li><a
												href="javascript:queryAllPerson(${requestScope.page.prePage}, ${requestScope.page.pageSize});">上一页</a></li>
										</c:if>
										<c:forEach items="${requestScope.page.navigatepageNums}"
											var="navigatepageNum">

											<c:if test="${navigatepageNum==requestScope.page.pageNum}">
												<li class="active"><a
													href="javascript:queryAllPerson(${navigatepageNum}, ${requestScope.page.pageSize});">${navigatepageNum}</a></li>
											</c:if>
											<c:if test="${navigatepageNum!=requestScope.page.pageNum}">
												<li><a
													href="javascript:queryAllPerson(${navigatepageNum}, ${requestScope.page.pageSize});">${navigatepageNum}</a></li>
											</c:if>
										</c:forEach>
										<c:if test="${!requestScope.page.isLastPage}">
											<li><a
												href="javascript:queryAllPerson(${requestScope.page.nextPage}, ${requestScope.page.pageSize});">下一页</a></li>
											<li><a
												href="javascript:queryAllPerson(${requestScope.page.lastPage}, ${requestScope.page.pageSize});">最后一页</a></li>
										</c:if>
									</ul>
								</div>
							</div>
						</div>

						<div class="pagination-wrap" id="page-div-nav">
							<div class="page-info" id="page-info-area"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
    
    <div class="modal fade" id="userEditDialog" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">修改用户信息</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="edit_user_form">
						<input type="hidden" id="edit_userId" name="userId"/>
						<div class="form-group">
							<label for="edit_userName" class="col-sm-2 control-label">用户名</label>
							<div class="col-sm-10">
								<input type="text" style="width:120px" class="form-control" id="edit_userName" placeholder="用户名" name="userName">
							</div>
						</div>
						
					<div class="form-group">
					    <label for="edit_image" class="col-sm-2 control-label">头像</label>
                        <div class="col-sm-10">                           
                            <input type="file" name="headPortrait" id="edit_image" class="filestyle" data-buttonName="btn-primary" data-buttonBefore="true" data-icon="false" multiple="multiple">
                        </div>
                    </div>
                    
						<div class="form-group">
							<label for="edit_custLevel" style="float:left;padding:7px 15px 0 27px;">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp性  别&nbsp</label>
							<div class="col-sm-10">
								<select	class="form-control" style="width:120px" id="edit_gender" name="gender">
									<option value="">--请选择--</option>
								    <option ${notify.type eq '男'?'selected':''} value="男">男</option>
                                    <option ${notify.type eq '女'?'selected':''} value="女">女</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_age" class="col-sm-2 control-label">年龄</label>
							<div class="col-sm-10">
								<input type="text" style="width:120px" class="form-control" id="edit_age" placeholder="年龄" name="age">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_tele" class="col-sm-2 control-label">电话号码</label>
							<div class="col-sm-10">
								<input type="text" style="width:200px" class="form-control" id="edit_tele" placeholder="电话号码" name="telephone">
							</div>
						</div>
						
				         <div class="form-group">
							<label for="edit_pass" class="col-sm-2 control-label">密码</label>
							<div class="col-sm-10">
								<input type="text" style="width:200px" class="form-control" id="edit_pass" placeholder="密码" name="loginPassword">
							</div>
						</div>
						   
					    <div class="form-group">
							<label for="edit_birth" class="col-sm-2 control-label">生日</label>
							<div class="col-sm-10">
								<input type="text" style="width:200px" class="form-control" id="edit_birth" placeholder="生日" name="birthday">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_Email" class="col-sm-2 control-label">Email</label>
							<div class="col-sm-10">
								<input type="text" style="width:200px" class="form-control" id="edit_Email" placeholder="密码" name="email">
							</div>
						</div>

						<div class="form-group">
							<label for="edit_loginTime" class="col-sm-2 control-label">登录时间</label>
							<div class="col-sm-10">
								<input type="text" style="width:200px" class="form-control" id="edit_loginTime" placeholder="登录时间" name="loginTime">
							</div>
						</div>
						
						<div class="form-group">
							<label for="edit_registertime" class="col-sm-2 control-label">注册时间</label>
							<div class="col-sm-10">
								<input type="text" style="width:200px" class="form-control" id="edit_registertime" placeholder="注册时间" name="registrationTime">
							</div>
						</div>
												
						<div class="form-group">
							<label for="edit_address" class="col-sm-2 control-label">联系地址</label>
							<div class="col-sm-10">
								<input type="text" style="width:385px" class="form-control" id="edit_address" placeholder="联系地址" name="address">
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" onclick="updateUser()">保存修改</button>
				</div>
			</div>
		</div>
	</div>
 
	<div id="path" style="display: none;">${pageContext.request.contextPath}</div>

	<script src="../../js/bootstrap.min.js"></script> 
		<!-- JS -->
	
	<script type="text/javascript">
		$(document).ready(function() {});
		function queryAllPerson(pageNum, pageSize) {
			$("#total").load("http://localhost:8083/user/showData?pageNum=" + pageNum + "&pageSize=" + pageSize);
		}
	</script>
    <script src="../../js/jquery-1.11.2.min.js"></script>     
    <script src="../../js/jquery-migrate-1.2.1.min.js"></script>
    <script type="text/javascript">
		 function editUserInfo(userId) {
			$.ajax({
				type:"get",
				url:"http://localhost:8083/user/showById?ran=Match.Random()",
				data:{"userId":userId},
				success:function(data) {
				if(data.birthday!=null&&data.birthday!=''){
				var birth = new Date(data.birthday).toLocaleString();
				}
				if(data.loginTime!=null&&data.loginTime!=''){
                var logTime = new Date(data.loginTime).toLocaleString2();
                }
                if(data.registrationTime!=null&&data.registrationTime!=''){
                var regTime = new Date(data.registrationTime).toLocaleString3();
                }
                    $("#edit_userId").val(data.userId);
					$("#edit_userName").val(data.userName);
					$("#edit_image").val(data.headPortrait);
					$("#edit_gender").val(data.gender);
					$("#edit_age").val(data.age);
					$("#edit_tele").val(data.telephone);
					$("#edit_pass").val(data.loginPassword);
					$("#edit_birth").val(birth);
					$("#edit_Email").val(data.email);
					$("#edit_loginTime").val(logTime);
					$("#edit_registertime").val(regTime);
					$("#edit_address").val(data.address);
					
				}
			});
			}
			function updateUser(){
			    $.post("${pageContext.request.contextPath}/user/updateUser",$("#edit_user_form").serialize(),function(data){
				alert("客户信息更新成功！");
				window.location.reload();
			});
			}
		
	</script>
    <script type="text/javascript">
          Date.prototype.toLocaleString = function() {
          return this.getFullYear() + "-" + (this.getMonth() + 1) + "-" + this.getDate();
    };
    </script>
    <script type ="text/javascript">
          Date.prototype.toLocaleString2 = function() {
          return this.getFullYear() + "-" + (this.getMonth() + 1) + "-" + this.getDate();
    };
    </script>
       <script type ="text/javascript">
          Date.prototype.toLocaleString3 = function() {
          return this.getFullYear() + "-" + (this.getMonth() + 1) + "-" + this.getDate();
    };
    </script>
</body>
</html>
