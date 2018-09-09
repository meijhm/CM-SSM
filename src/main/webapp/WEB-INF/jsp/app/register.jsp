<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

	<head>
		<%  
				    String path = request.getContextPath();  
				    String basePath = request.getScheme() + "://"  
				            + request.getServerName() + ":" + request.getServerPort()  
				            + path;
				    pageContext.setAttribute("basePath",basePath);
				%>
                <!-- META TAGS -->
                <meta charset="UTF-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0">

                <title>小社趣</title>

                <!-- <link rel="shortcut icon" href="images/favicon.png" /> -->
                <!-- ICONS -->
                <link rel="apple-touch-icon" sizes="76x76" href="${basePath}/resources/app/images/apple-icon.png">
                <link rel="icon" type="image/png" sizes="96x96" href="${basePath}/resources/app/images/favicon.png">

                <!-- Style Sheet-->
                <link rel="stylesheet" href="${basePath}/resources/app/css/style.css"/>
                <link rel='stylesheet' id='bootstrap-css-css'  href='${basePath}/resources/app/css/bootstrap5152.css?ver=1.0' type='text/css' media='all' />
                <link rel='stylesheet' id='responsive-css-css'  href='${basePath}/resources/app/css/responsive5152.css?ver=1.0' type='text/css' media='all' />
                <link rel='stylesheet' id='pretty-photo-css-css'  href='${basePath}/resources/app/js/prettyphoto/prettyPhotoaeb9.css?ver=3.1.4' type='text/css' media='all' />
                <link rel='stylesheet' id='main-css-css'  href='${basePath}/resources/app/css/main5152.css?ver=1.0' type='text/css' media='all' />
                <link rel='stylesheet' id='custom-css-css'  href='${basePath}/resources/app/css/custom5152.html?ver=1.0' type='text/css' media='all' />

                <link rel="stylesheet" href="${basePath}/resources/app/css/layui.css">

	</head>

	<body>
		<div class="header">
			
			<div class="login_bg"> </div>
			<div class="login_box">
				<div class="container">
					<div class="register">
						<form action="${pageContext.request.contextPath}/userManage?method=addUser" method="post">
							<div class="register-top-grid">
								<h3>欢迎注册平安保险会员</h3>
								<div>
									<span>用户名：</span>
									<input id="name" name="uName" type="text"><span id="uSpan"></span>
								</div>
								<div>
										<span>密码</span>
										<input name="uPwd" type="password">
									</div>
								<div>
									<span>邮箱：</span>
									<input id="email" name="uEmail" type="email"><span id="emailSpan"></span>
								</div>
								<div class="clearfix"> </div>
								<div>
									<span>验证码：</span>
									<input id="code" name="eCode" type="text">
									<span id="span"></span>
									<div style="height: 10px;"></div>
									<input id="a" type="button" class="btn" value="获取验证码" />
								</div>
<!-- 								<div class="register-bottom-grid">
									<h3>登陆信息</h3>
									<div>
										<span>密码<label>*</label></span>
										<input name="uPwd" type="password">
									</div>
									<div>
										<span>确认密码<label>*</label></span>
										<input type="password">
									</div>
								</div> -->
							</div>
						
						<div class="clearfix"> </div>
						<div class="register-but">
							
								<input id="zc" type="submit" value="注册">
								<div class="clearfix"> </div>
							
						</div>
						</form>
					</div>
				</div>
	<script>
	var tmp = 0;
	$(function(){
		$("#zc").click(function() {
			var val1 = $("#emailSpan").text();
			val1 = $.trim(val1);
			var val = $("#span").text();
			val = $.trim(val);
			var val2 = $("#uSpan").text();
			val2 = $.trim(val2);
			console.log(val1+"=="+val+"=="+val2);
			if ("用户名可用"==val2 && "邮件已发送！"==val1 && "邮箱验证码正确"==val) {
				
			}else if("用户名可用"==val2 && "邮箱可用"==val1 && "邮箱验证码正确"==val) {
				
			}else {
				alert("还不能提交，上面填写有误！");
				return false;
			}
		});
		$("#name").blur(function(){
			var val = $("#name").val();
			val = $.trim(val);
			$.get("${pageContext.request.contextPath}/validataEmail?method=verifuName",{ "uName": val,"time":new Date()},function(data){
				$("#uSpan").html(data);
			});
		});
		$("#email").blur(function(){
			var val = $("#email").val();
			val = $.trim(val);
			$.get("${pageContext.request.contextPath}/validataEmail?method=verifMail",{ "uemail": val,"time":new Date()},function(data){
				$("#emailSpan").html(data);
			});
		});
		$("#code").blur(function(){
			var val = $("#code").val();
			val = $.trim(val);
			$.get("${pageContext.request.contextPath}/validataEmail?method=yzCode",{ "eCode": val,"time":new Date()},function(data){
				$("#span").html(data);
			});
		});
	 	$("#a").click(function() {
			if($("#emailSpan").text() == "邮箱可用"){
				var val = $("#email").val();
				val = $.trim(val);
				$.get("${pageContext.request.contextPath}/validataEmail?method=sendEmail",{ "email": val,"time":new Date()},function(data){
					$("#emailSpan").html(data);
					tmp = 1;
				});
			}else {
				$("#emailSpan").html("<font color='red'>邮箱正确后才能获取验证码</font>");	
			}
		});
	});
	</script>		
	</body>

</html>