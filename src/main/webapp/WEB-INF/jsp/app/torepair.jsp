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
    <label class="layui-form-label">维修单编号</label>
    <div class="layui-input-block">
      <input id="a" readonly="true" type="text" name="rcode" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">申请时间</label>
    <div class="layui-input-block">
      <input id="b" readonly="true" type="text" name="rtime" class="layui-input">
    </div>
  </div>
  
  <div class="layui-form-item">
   <textarea name="rdetail" id="demo" class="layui-hide">
      在此填写维修内容...
    </textarea>
  </div>
  <div class="layui-form-item">
    <label class="layui-form-label">维修状态</label>
    <div class="layui-input-block">
      <input id="c" readonly="true" type="text" name="rstatus" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <input id="d" type="hidden" name="uid" value="100" class="layui-input">
    </div>
  </div>
  <button type="button" id="mysub" class="layui-btn">提交</button>
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
	$("#a").val("wxd"+new Date().getTime()+Math.floor(Math.random() * 10)); // Math.floor(n); 返回小于等于n的最大整数。
	$("#b").val(timestampToTime(new Date().getTime()));
	$("#c").val("未受理");
});

	
$("#mysub").click(function(){
 	var iframe = document.getElementsByName("LAY_layedit_1")[0];
	$("#demo").val(iframe.contentWindow.document.body.innerHTML);
	alert($(".layui-form").serialize());
	$.ajax({
        url:"${basePath}/repairinfo/save",
        method:"POST",
        // 序列化的表单数据，通过jQuery的serialize方法
        data:$(".layui-form").serialize(),
        success:function (result) {
           	//console.log(result);
           	if(result.code == 200){
           		alert("发送成功");
           	}else {
           		alert("发送失败！");
			}
        }
    });
});
</script>
</body>
</html>