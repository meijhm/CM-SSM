<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册</title>
	<%@include file="/common/head.jsp" %>
	<link rel="stylesheet" href="${basePath}/resources/vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="${basePath}/resources/vendor/linearicons/style.css">
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="${basePath}/resources/vendor/css/main.css">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="${basePath}/resources/vendor/css/demo.css">
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="${basePath}/resources/images/admin/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="${basePath}/resources/images/admin/favicon.png">
</head>
<body>
<% 
String msg = (String)request.getAttribute("msg");
if(msg != null){
	session.invalidate();
	out.print("<script>alert('"+msg+"');</script>");
}

%>
<div style="margin-top: 10px;margin-left: 85%;margin-bottom: -25px;">已有账号?<a href="${basePath}/applogin">前往登录</a></div>
<!-- WRAPPER -->
	<div id="wrapper" style="margin-top:60px;">
		<div class="vertical-align-wrap">
			<div class="vertical-align-middle">
				<div class="auth-box ">
					<div class="left">
						<div class="content" style="width: 98%">
							<div class="header">
								<div class="logo text-center"><img src="${basePath}/resources/images/admin/logo.png" alt="Amazing"></div>
								<p class="lead">快加入这个Amazing的小区社区</p>
							</div>
							<form class="form-auth-small" action="${basePath}/user/reg" method="post">
								<div class="form-group">
									<label for="signin-email" class="control-label sr-only">昵称</label>
									<input type="text" class="form-control" name="lName" id="signin-email" placeholder="您的用户名...">
								</div>
								<div class="form-group">
									<label for="signin-password" class="control-label sr-only">密码</label>
									<input type="password" class="form-control" name="lPwd" id="signin-password" placeholder="您的密码...">
								</div>
								<div class="form-group">
									<label for="signin-yzm" class="control-label sr-only">验证码</label>
									<input type="text" class="form-control" name="code" id="signin-yzm" placeholder="请输入验证码...">
									<img src="${basePath}/image?time=12" id="scode" onclick="changeCode()"/>
									<span id="checkcode_span"></span>
									<br>
								</div>

								<button type="submit" class="btn btn-primary btn-lg btn-block">注册</button>
								
							</form>
						</div>
					</div>
					<div class="right">
						<div class="overlay"></div>
						<div class="content text">
							<h1 class="heading">欢迎来到小趣社用户注册界面</h1>
							<p>Design by mjh</p>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- END WRAPPER -->
	<script>
		function changeCode(){
			var img = document.getElementById("scode");
			img.src = "${basePath}/image?time="+new Date().getMilliseconds();
		}
	</script>
</body>
</html>