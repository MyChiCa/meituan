<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="templatemo-top-nav-container">
    <div class="row">
        <nav class="templatemo-top-nav col-lg-12 col-md-12">
            <ul class="text-uppercase">
                <li><a href="${pageContext.request.contextPath}/restaurant/showData">所有商家</a></li>
                <li><a href="#" data-toggle="modal" data-target="#addRest">添加商家</a></li>
            </ul>
        </nav>
    </div>
</div>
<%--修改商品信息模态框--%>
	<!-- Modal -->
	<div class="modal fade" id="addRest" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">添加商家信息</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" id="insert_Rstr_form" name="update-form"
						method="post">
						<input type="hidden" id="edit_rstrId" name="rstrId"/>
						<div class="form-group">
							<label for="edit_rstrName" class="col-sm-2 control-label">店铺名</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" name="rstrName"
									id="edit_rstrName">
							</div><span class="error-msg">${errorMsg}</span>
						</div>
						<div class="form-group">
							<label for="edit_telephone" class="col-sm-2 control-label">电话</label>
							<div class="col-sm-9">
								<input type="number" class="form-control" name="telephone"
									id="edit_telephone">
							</div><span class="error-msg">${errorMsg}</span>
						</div>
						<div class="form-group">
							<label for="edit_takeTime" class="col-sm-2 control-label">配送时间</label>
							<div class="col-sm-9">
								<input type="number" class="form-control" name="takeTime"
									id="edit_takeTime">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_btakeFare" class="col-sm-2 control-label">起送费用</label>
							<div class="col-sm-9">
								<input type="number" class="form-control" id="edit_btakeFare" name="btakeFare">
							</div>
						</div>
						<div class="form-group">
							<label for="edit_takeFare" class="col-sm-2 control-label">配送费用</label>
							<div class="col-sm-9">
								<textarea class="form-control" id="edit_takeFare"
									name="takeFare"></textarea>
							</div>
						</div>
						 
					  <div class="form-group">
                        <div class="col-lg-12">
                            <label class="col-sm-2 control-label">      图片 </label>
                            <!-- <input type="file" name="fileToUpload" id="fileToUpload" class="margin-bottom-10"> -->
                            <input type="file" name="fileToUpload" id="fileToUpload" class="filestyle" data-buttonName="btn-primary" data-buttonBefore="true" data-icon="false" multiple="multiple">
                            <!-- <p>Maximum upload size is 5 MB.</p>  -->
                        </div>
                    </div>
						<div class="form-group">
							<label for="edit_workTime" class="col-sm-2 control-label">工作时间</label>
							<div class="col-sm-9">
								<textarea class="form-control" id="edit_workTime"
									name="workTime"></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="menuName" class="col-sm-2 control-label">类型</label>
							<div class="col-sm-9">
								<select class="form-control" id="edit_menu" name="menuName">
								<c:forEach items="${menuList}" var="item">
                                    <option value="${item.menuId}">${item.menuName}</option>
                                </c:forEach>
								</select>
							</div>
						</div>
						
						<div class="form-group">
							<label for="edit_description" class="col-sm-2 control-label">描述</label>
							<div class="col-sm-9">
								<textarea class="form-control" id="edit_description"
									name="takeFare"></textarea>
							</div>
						</div>
						<div class="form-group">
							<label for="edit_address" class="col-sm-2 control-label">地址</label>
							<div class="col-sm-9">
								<textarea class="form-control" id="edit_address"
									name="address"></textarea>
							</div>
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary" onclick="location='${pageContext.request.contextPath}/restaurant/insert'" id="saveUpdate">提交</button>
				</div>
			</div>
		</div>
	</div>
