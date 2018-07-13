<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>美团商家店铺</title>
    <meta name="description" content="">
    <meta name="author" content="templatemo">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet' type='text/css'>
    <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/templatemo-style.css" rel="stylesheet">

</head>
<body>
<!-- Left column -->
<div class="templatemo-flex-row">
    <jsp:include page="sidebar.jsp"></jsp:include>
    <!-- Main content -->
    <div class="templatemo-content col-1 light-gray-bg">
        <div class="templatemo-top-nav-container">
            <div class="row">
                <nav class="templatemo-top-nav col-lg-12 col-md-12">
                    <ul class="text-uppercase">
                        <li><a href="" class="active">美 团 商 家</a></li>
                        <li><a href="">美 团 外 卖</a></li>
                        <li><a href=""></a></li>
                        <li><a href="" data-toggle="modal" data-target="#adminEditDialog" onclick="editUserInfo(${a.userId})">个人信息</a>
                    </ul>
                </nav>
            </div>
        </div>
        <div class="templatemo-content-container">
            <div class="templatemo-flex-row flex-content-row">
                <div class="templatemo-content-widget white-bg col-2">
                    <i class="fa fa-times"></i>
                <div class="templatemo-content-widget white-bg col-1 text-center">
                    <i class="fa fa-times"></i>
                    <h2 class="text-uppercase">欢迎来到美团店铺</h2><br><br><br><br>
                    <h3>管理我的店铺</h3>
                    <%--<img src="${pageContext.request.contextPath}/image/bicycle.jpg" alt="Bicycle" class="img-circle img-thumbnail">--%>
                </div>
                <div class="templatemo-content-widget white-bg col-1">
                    <i class="fa fa-times"></i>
                    <h3 class="text-uppercase">平台评价</h3><hr>
                    <div class="progress">
                        <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;"></div>
                    </div>
                    <div class="progress">
                        <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 50%;"></div>
                    </div>
                    <div class="progress">
                        <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%;"></div>
                    </div>
                </div>
            </div>
 <div class="modal fade" style="width:550px" id="adminEditDialog" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="admin-modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">修改信息</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="edit_admin_form">
						<input type="hidden" id="edit_adminId" name="adminId"/>
						<div class="form-group">
							<label for="edit_telephone" class="col-sm-2 control-label">电话号码</label>
							<div class="col-sm-10">
								<input type="text" style="width:120px" class="form-control" id="edit_telephone" placeholder="用户名" name="telephone">
							</div>
						</div>
					
				         <div class="form-group">
							<label for="edit_adminPassword" class="col-sm-2 control-label">密码</label>
							<div class="col-sm-10">
								<input type="text" style="width:200px" class="form-control" id="edit_adminPassword" placeholder="密码" name="adminPassword">
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" class="btn btn-primary" onclick="updateAdmin()">保存修改</button>
				</div>
			</div>
		</div>
	</div>
	<script src="../js/jquery-1.11.2.min.js"></script>     
    <script src="../js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript">
		function editUserInfo() {
			$.ajax({
				type:"get",
				url:"http://localhost:8083/admin/showInfo",
				//data:{"tAdmin":tAdmin},
				success:function(data) {
					$("#edit_adminId").val(data.adminId);
					$("#edit_telephone").val(data.telephone);
					$("#edit_adminPassword").val(data.adminPassword);
				}
			});
		}
			function updateAdmin(){
			    $.post("${pageContext.request.contextPath}/admin/update",$("#edit_admin_form").serialize(),function(data){
				alert("修改成功！");
				window.location.reload();
			});
			}
</script>
<!-- JS -->
<script type="text/javascript" src="../js/templatemo-script.js"></script>
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700'
	rel='stylesheet' type='text/css'>
<link href="../css/font-awesome.min.css"
	rel="stylesheet">
<link href="../css/bootstrap.min.css"
	rel="stylesheet">
<link href="../css/templatemo-style.css"
	rel="stylesheet">     
<script src="../js/sweetalert.min.js"></script>
<script src="../js/jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="../css/sweetalert.css"> 
<script src="../js/bootstrap.min.js"></script> 
</body>
</html>
