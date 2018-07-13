<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="templatemo-top-nav-container">
    <div class="row">
        <nav class="templatemo-top-nav col-lg-12 col-md-12">
            <ul class="text-uppercase">
                <li><a href="${pageContext.request.contextPath}/food/showData">所有菜色</a></li>
                <li><a href="${pageContext.request.contextPath}/food/add">添加菜色</a></li>
                <li><a href="#" data-toggle="modal" data-target="#updateMenu" >添加菜系</a></li>
            </ul>
        </nav>
    </div>
</div>
<%--修改商品信息模态框--%>
	<!-- Modal -->
	<div class="modal fade" id="updateMenu" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">添加菜系</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="edit_Rstr_form" name="update-form"
						method="post">
						<input type="hidden" id="insert_MenuId" name="menuId"/>
						<div class="form-group">
							<label for="insert_menuName" class="col-sm-2 control-label">菜系</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="menuName"
									id="insert_menuName">
							</div>
						</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary" onclick="updateMenu()" id="saveUpdate">添加</button>
				</div>
			</div>
		</div>
	</div>
</div>
<Script type="text/javascript">
      function updateMenu(){
           var menuName = document.getElementById('insert_menuName').value;
           if(menuName==null){
                alert(菜系名不能为空);
           }
           else{
              window.location.href="${pageContext.request.contextPath}/addMenu?menuName="+menuName;
           }
      }
</Script>
