<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>注册 | 美团外卖</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/mycss/base.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/mycss/register.css">
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-3.3.1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/myjs/register.js"></script>
	<script type="text/javascript">
		window.onload = function(){
			var password = document.getElementById("password");
			password.addEventListener("blur",judgePass);
			password.addEventListener("input",judgePassLevel);
		}
	</script>
</head>
<body>
	<div id="header">
		<div id="login_logo">
			<img src="${pageContext.request.contextPath }/images/login/kang.png">
		</div>	
		<hr id="head_hr">
	</div>
	<div id="register_content">
		<form action="${pageContext.request.contextPath }/business/insert" method="post" onsubmit="return checkNull();">
		<center>
		<fieldset>
			<legend>用户注册</legend>
			<div>
				<label for="telephone">手机号&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
				<input type="text" name="telephone" id="telephone" onblur="judgeTel();">
			</div>
			<img src="${pageContext.request.contextPath }/images/register/sanBlue.png" class="triangle position" id="triangle1">
			<div class="judge position" id="judge1"></div>
			<div>
				<label for="loginPassword">密码&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
				<input type="password" name="loginPassword" id="password" >
			</div>
			<img src="${pageContext.request.contextPath }/images/register/sanBlue.png" class="triangle position" id="triangle2">
			<div class="judge position" id="judge2"></div>
			<div id="power">
				<span id="weak">弱</span>
				<span id="soso">中</span>
				<span id="strong">强</span>
			</div>
			<div id="con">
				<label for="con_pword">确认密码&nbsp;&nbsp;</label>
				<input type="password" name="con_pword" id="con_pword" onblur="judgeConPass();">
			</div>
			<img src="${pageContext.request.contextPath }/images/register/sanBlue.png" class="triangle position" id="triangle3">
			<div class="judge position" id="judge3"></div>
			<div>
				<input type="checkbox" name="protocol" id="protocol" onclick="judgePro();">
				<a href="http://www.meituan.com/about/terms">同意&lt;&lt;美团网用户协议&gt;&gt;</a>
			</div>
			<div><input type="submit" value="注册" id="register" disabled="disabled" onclick=""></div>
		</fieldset>
		</center>
		</form>
	</div>
	<div id="footer">
		<hr id="footer_hr">
		<center class="font_style">
			<span><pre><a href="http://www.meituan.com/" class="font_style">&copy;meituan.com</a>  <a href="http://www.miibeian.gov.cn/" class="font_style">京ICP证070791号</a>  京公网安备11010502025545号</pre></span>
		</center>
	</div>
</body>
</html>