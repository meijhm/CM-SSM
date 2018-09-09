<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
</head>
<body>
<% 
String msg = (String)session.getAttribute("msg");
/* if(msg!=null){
	out.print("<script>alert('验证码忽略大小写,验证码错误!');</script>");
} */
//out.print("<script>alert('"+msg+"');</script>");
if("验证码错误".equals(msg)){
	session.invalidate();
	out.print("<script>alert('验证码忽略大小写,验证码错误!');</script>");
}
%>
<%-- <jsp:include page="aa.jsp"></jsp:include> --%>
<div id="loginbox">
			<form style="height: 450px;" action="${ pageContext.request.contextPath }/login" method="post">
				<div class="control-group normal_text">
					<h4>
						<img style="border:0;vertical-align:middle;border-radius: 50%;width: 80px;height: 80px;" src="${ pageContext.request.contextPath }/login/public.png" id="headImg" alt="未注册" />
					</h4>
				</div>
				<div class="control-group">
					<div class="controls">
						<div class="main_input_box">
							<span class="add-on bg_lg">
							<img id="imgLogo" height="37" src="${ pageContext.request.contextPath }/login/user.png" />
							</span><input type="text" onblur="getNameText()" id="username" name="uname" placeholder="请输入用户名" />
						</div>
					</div>
				</div>
				<div class="control-group">
					<div class="controls">
						<div class="main_input_box">
							<span class="add-on bg_ly">
							<i><img height="37" src="${ pageContext.request.contextPath }/login/suo.png" /></i>
							</span><input type="password" name="upwd" id="password" placeholder="请输入密码" class="keypad"/>
						</div>
					</div>
				</div>
				<div>
					<label style="display: inline-block;background-color: RGB(204,222,236);width: 135px;height: 33px;line-height: 33px;">选择免登录的时间</label>
			 		<select style="margin-top: 8px;" name="noLogin" class="text_field select_field">
						<option value="3min">3分钟</option>
						<option value="3hour" selected="selected">3小时</option>
						<option value="3day">3天</option>
						<option value="7day">7天</option>
					</select>
				</div>
				<div style="margin-top: 10px;">
					<label style="display: inline-block;background-color: RGB(204,222,236);width: 68px;height: 33px;line-height: 33px;">验证码：</label>
					<input style="margin-top: 8px;width: 90px;" type="text" name="code"/>
					<img src="image" id="scode" onclick="changeCode()"/><a href="javascript:changeCode()">看不清换一张</a>
				</div>
				<div style="margin-top: 10px;" id="login_control">
					<span class="pull-right" style="padding-right:3%;margin-right:30px;"><a href="bg2.jsp" class="btn btn-success">前往注册</a></span>
					<span class="pull-right"><input type="submit" onclick="severCheck();" class="flip-link btn btn-info" id="to-recover"  value="登录"></span>
	        	</div>
			</form>
</div>
<script>
function getNameText(){
	var nameVal = $("#username").val();
	nameVal = $.trim(nameVal);
	var dir = 
	$.get("${pageContext.request.contextPath}/validataImg",{ "uname": nameVal,"time":new Date()},function(data){
		$("#headImg").attr("src","${ pageContext.request.contextPath }/images/"+data);
	});
}
//得到验证码
function changeCode(){
	var img = document.getElementById("scode");
	console.log(img+"====sda");
	
	img.src = "image?time="+new Date().getTime();
}
</script>
</body>
</html>