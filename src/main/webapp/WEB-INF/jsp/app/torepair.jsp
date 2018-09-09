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
      <input id="b" type="text" name="rtime" class="layui-input">
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
      <input id="c" type="text" name="rstatus" class="layui-input">
    </div>
  </div>
  <div class="layui-form-item">
    <div class="layui-input-block">
      <input id="d" type="hidden" name="uid" value="4" class="layui-input">
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

function getNowFormatDate() {
    var date = new Date();
    var seperator1 = "-";
    var year = date.getFullYear();
    var month = date.getMonth() + 1;
    var strDate = date.getDate();
    if (month >= 1 && month <= 9) {
        month = "0" + month;
    }
    if (strDate >= 0 && strDate <= 9) {
        strDate = "0" + strDate;
    }
    var currentdate = year + seperator1 + month + seperator1 + strDate;
    return currentdate;
}
$(function(){
	$("#a").val("wx"+Math.random()*10);
	$("#b").val(getNowFormatDate());
	$("#c").val("未受理");
});

	
$("#mysub").click(function(){
	alert($(".layui-form").serialize());
	$.ajax({
        url:"${basePath}/repairinfo/save",
        method:"POST",
        // 序列化的表单数据，通过jQuery的serialize方法
        data:$(".layui-form").serialize(),
        success:function (result) {
           	alert(result);

        }
    });
});
</script>
</body>
</html>