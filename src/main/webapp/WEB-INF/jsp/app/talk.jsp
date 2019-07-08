<%@include file="header.jsp" %>
<%@include file="bootstrap.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="${basePath}/resources/css/init.css">
<link rel="stylesheet" href="${basePath}/resources/app/css/layui.css">
<style>
li{style-list:none;display:inline;}
.pos{text-align:center;}
</style>
<div class="layui-container pos layui-bg-gray">
<ul>
<li><a href="${basePath}/talk/tosend" target="aa">发送动态</a></li>
<li><a href="${basePath}/talk/torepair" target="aa">申请维修</a></li>
<li><a href="${basePath}/talk/repairresult" target="aa">维修结果</a></li>
</ul>
<iframe src="${basePath}/talk/welcome" height="500px" width="100%" frameborder="0" name="aa"></iframe>
</div>

<%@include file="footer.jsp" %>