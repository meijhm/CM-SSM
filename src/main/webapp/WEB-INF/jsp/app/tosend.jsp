<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%  
				    String path = request.getContextPath();  
				    String basePath = request.getScheme() + "://"  
				            + request.getServerName() + ":" + request.getServerPort()  
				            + path;
				    pageContext.setAttribute("basePath",basePath);
				%>
<link rel="stylesheet" href="${basePath}/resources/css/init.css">
<link rel="stylesheet" href="${basePath}/resources/app/css/layui.css">
<%@include file="bootstrap.jsp" %>
</head>
<body>
<form class="layui-form layui-form-pane1" lay-filter="first">
  
  <div class="layui-form-item">
    <label class="layui-form-label">发送时间</label>
    <div class="layui-input-block">
      <input id="b" readonly="true" type="text" name="mTime" class="layui-input">
    </div>
  </div>
  
  <div class="layui-form-item">
   <textarea name="mMsg" id="demo" class="layui-hide">发动态...</textarea>
  </div>
  
  <div class="layui-form-item">
    <div class="layui-input-block">
      <input id="d" type="hidden" name="lId" value="100" class="layui-input">
    </div>
  </div>
  <button type="button" id="mysub" class="layui-btn">发送</button>
</form>
<script src="${basePath}/resources/app/js/layui.js"></script>
<script>
layui.use('layedit', function(){
	  var layedit = layui.layedit;
	  
	  var index = layedit.build('demo', {
	    /* uploadImage: {
	      url: 'json/upload/demoLayEdit.json'
	      ,type: 'get'
	    } 
	    ,*/hideTool: ['unlink','link','image']
	    ,height: 100
	  });
	  
	});

function timestampToTime(timestamp) {
    var date = new Date(timestamp);//时间戳为10位需*1000，时间戳为13位的话不需乘1000
    Y = date.getFullYear() + '-';
    M = (date.getMonth()+1 < 10 ? '0'+(date.getMonth()+1) : date.getMonth()+1) + '-';
    D = (date.getDate() < 10 ? '0'+date.getDate() : date.getDate()) + ' ';
    h = (date.getHours() < 10 ? '0'+date.getHours() : date.getHours()) + ':';
    m = (date.getMinutes() < 10 ? '0'+date.getMinutes() : date.getMinutes()) + ':';
    s = date.getSeconds() < 10 ? '0'+date.getSeconds() : date.getSeconds();
    return Y+M+D+h+m+s;
}

$(function(){
	$("#b").val(timestampToTime(new Date().getTime()));
});

	
$("#mysub").click(function(){
	var iframe = document.getElementsByName("LAY_layedit_1")[0];
	$("#demo").val(iframe.contentWindow.document.body.innerHTML);
	//alert($(".layui-form").serialize());
	$.ajax({
        url:"${basePath}/moving/insert",
        method:"POST",
        data:$(".layui-form").serialize(),
        success:function (result) {
           	console.log(result);
           	if(result.code == 200){
           		alert("发送成功");
                window.location.href="${basePath}/talk/tosend";
           	}else {
           		alert("发送失败！");
			}
        }
    });
});
</script>
</body>
</html>