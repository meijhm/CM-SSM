<%  
    String path = request.getContextPath();  
    String basePath = request.getScheme() + "://"  
            + request.getServerName() + ":" + request.getServerPort()  
            + path;  
    pageContext.setAttribute("basePath",basePath);    
%>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->

<!-- Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="${basePath}/resources/css/bootstrap.min.css">

<!-- jQuery文件  务必在bootstrap.min.js 之前引入 -->
<script src="${basePath}/resources/js/jquery-3.2.1.js"></script>
<%-- <script src="${basePath}/resources/js/jquery-1.8.3.min.js"></script> --%>
<!-- Bootstrap 核心 JavaScript 文件 -->
<script src="${basePath}/resources/js/bootstrap.min.js"></script>