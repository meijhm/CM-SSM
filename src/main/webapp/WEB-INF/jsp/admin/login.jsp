<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>登录</title>
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
<!-- WRAPPER -->
	<div id="wrapper" style="margin-top:85px;">
		<div class="vertical-align-wrap">
			<div class="vertical-align-middle">
				<div class="auth-box ">
					<div class="left">
						<div class="content">
							<div class="header">
								<div class="logo text-center"><img src="${basePath}/resources/images/admin/logo.png" alt="Amazing"></div>
								<p class="lead">Login to your account</p>
							</div>
							<form class="form-auth-small" action="${basePath}/admin/doLogin">
								<div class="form-group">
									<label for="signin-email" class="control-label sr-only">用户名</label>
									<input type="text" class="form-control" name="aName" id="signin-email" placeholder="您的用户名...">
								</div>
								<div class="form-group">
									<label for="signin-password" class="control-label sr-only">密码</label>
									<input type="password" class="form-control" name="aPwd" id="signin-password" placeholder="您的密码...">
								</div>
								<div class="form-group">
									<label for="signin-yzm" class="control-label sr-only">验证码</label>
									<input type="text" class="form-control" name="code" id="signin-yzm" placeholder="请输入验证码...">
									<img src="image" id="scode" onclick="changeCode()"/>
									<span id="checkcode_span"></span>
									<br>
								</div>
								
								<div class="form-group clearfix">
									选择免登录的时间
									<select name="noLogin">
										<option value="3min">3分钟</option>
										<option value="3hour" selected="selected">3小时</option>
										<option value="3day">3天</option>
										<option value="7day">7天</option>
									</select><br>
								</div>
								<button type="submit" class="btn btn-primary btn-lg btn-block">登录</button>
								
							</form>
						</div>
					</div>
					<div class="right">
						<div class="overlay"></div>
						<div class="content text">
							<h1 class="heading">欢迎来到小趣社后台登录界面</h1>
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