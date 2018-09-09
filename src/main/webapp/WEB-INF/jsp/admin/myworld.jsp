<%--
  Created by IntelliJ IDEA.
  User: meijianhua
  Date: 2018/8/25
  Time: 21:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心</title>
    <%@include file="/common/head.jsp" %>
<!-- VENDOR CSS -->
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
<div id="wrapper">
    <!-- NAVBAR -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div style="padding:0px 10px;" class="brand">
            <a href="${basePath}/"><img src="${basePath}/resources/images/logo.png" alt="Amusing Logo" class="img-responsive logo"></a>
        </div>
        <div class="container-fluid">
            <div class="navbar-btn">
                <button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
            </div>
            <form class="navbar-form navbar-left">
                <div class="input-group">
                    <input type="text" value="" class="form-control" placeholder="Search dashboard...">
                    <span class="input-group-btn"><button type="button" class="btn btn-primary">搜索</button></span>
                </div>
            </form>
            <div class="navbar-btn navbar-btn-right">
                <a class="btn btn-success update-pro" href="#downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>支持</span></a>
            </div>
            <div id="navbar-menu">
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle icon-menu" data-toggle="dropdown">
                            <i class="lnr lnr-alarm"></i>
                            <span class="badge bg-danger">5</span>
                        </a>
                        <ul class="dropdown-menu notifications">
                            <li><a href="#" class="notification-item"><span class="dot bg-warning"></span>System space is almost full</a></li>
                            <li><a href="#" class="notification-item"><span class="dot bg-danger"></span>You have 9 unfinished tasks</a></li>
                            <li><a href="#" class="notification-item"><span class="dot bg-success"></span>Monthly report is available</a></li>
                            <li><a href="#" class="notification-item"><span class="dot bg-warning"></span>Weekly meeting in 1 hour</a></li>
                            <li><a href="#" class="notification-item"><span class="dot bg-success"></span>Your request has been approved</a></li>
                            <li><a href="#" class="more">See all notifications</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="lnr lnr-question-circle"></i> <span>帮助</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">基本用法</a></li>
                            <li><a href="#">Working With Data</a></li>
                            <li><a href="#">Security</a></li>
                            <li><a href="#">Troubleshooting</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="${basePath}/resources/images/admin/user.png" class="img-circle" alt="Avatar"> <span>Admin</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><i class="lnr lnr-user"></i> <span>我的主页</span></a></li>
                            <li><a href="#"><i class="lnr lnr-envelope"></i> <span>消息</span></a></li>
                            <li><a href="#"><i class="lnr lnr-cog"></i> <span>设置</span></a></li>
                            <li><a href="#"><i class="lnr lnr-exit"></i> <span>注销</span></a></li>
                        </ul>
                    </li>
                    <!-- <li>
                        <a class="update-pro" href="#downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>UPGRADE TO PRO</span></a>
                    </li> -->
                </ul>
            </div>
        </div>
    </nav>
    <!-- END NAVBAR -->
    <!-- LEFT SIDEBAR -->
    <div id="sidebar-nav" class="sidebar">
        <div class="sidebar-scroll">
            <nav>
                <ul class="nav">
                    <li><a href="${basePath}/admin" class=""><i class="lnr lnr-home"></i> <span>后台桌面</span></a></li>
                    <li><a href="${basePath}/house/list" class="active"><i class="lnr lnr-dice"></i> <span>楼房信息</span></a></li>
                    <li><a href="${basePath}/user/list" class=""><i class="lnr lnr-user"></i> <span>用户信息</span></a></li>
                    <li><a href="${basePath}/staff/list" class=""><i class="lnr lnr-user"></i> <span>维修员信息</span></a></li>
                    <li><a href="${basePath}/chargeitem/list" class=""><i class="lnr lnr-inbox"></i> <span>收费项目</span></a></li>
                    <li><a href="${basePath}/payinfo/list" class=""><i class="lnr lnr-bookmark"></i> <span>缴欠费信息</span></a></li>
                    <li><a href="${basePath}/repairinfo/list" class=""><i class="lnr lnr-pencil"></i> <span>申请维修信息</span></a></li>
                    <li><a href="${basePath}/dorepair/list" class=""><i class="lnr lnr-heart"></i> <span>维修处理信息</span></a></li>
                </ul>
            </nav>
        </div>
    </div>
    <!-- MAIN -->
    <div class="main">
    	<!-- 员工修改模态框 -->
<div class="modal fade" id="empUpdateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" >修改管理员信息</h4>
            </div>
            <div class="modal-body">
                <form action="${basePath}/up/doupl" class="form-horizontal" method="post" enctype="multipart/form-data">
                	<div class="form-group">
                        <label for="id_update_label" class="col-sm-2 control-label">id</label>
                        <div class="col-sm-10">
                            <p class="form-control-static" id="id_update_label" name="hid"></p>
                            <span class="help-block"></span>
                        </div>
                    </div>
                    <div class="form-group">
                            <label for="name_update_input" class="col-sm-2 control-label">管理员昵称</label>
                            <div class="col-sm-10">
                                <input type="text" name="aname" class="form-control" id="name_update_input" placeholder="请输入管理员昵称">
                                <span class="help-block"></span>
                            </div>
                        </div>
                        <div class="form-group">
                        <label for="address_update_input" class="col-sm-2 control-label">管理员头像</label>
                            <div class="col-sm-10">
                                <input type="file" name="aImg" class="form-control" id="address_update_input">
                                <span class="help-block"></span>
                            </div>
                    	</div>
                         <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="submit" class="btn btn-primary" onclick="updateClick()" id="update_save_button">更新</button>
            </div>
                </form>
            </div>
           
        </div>
    </div>
</div>
    
        <!-- MAIN CONTENT -->
        <div class="main-content">
            <div class="container-fluid">
                <div class="panel panel-profile">
                    <div class="clearfix">
                        <!-- LEFT COLUMN -->
                        <div class="profile-left" style="width: 100%;" >
                            <!-- PROFILE HEADER -->
                            <div class="profile-header">
                                <div class="overlay"></div>
                                <div class="profile-main">
                                    <img src="${basePath}/images/user-medium.png" id="testImg" class="img-circle" alt="Avatar">
                                    <h3 class="name"><span id="testName">Admin</span></h3>
                                    <span class="online-status status-available">Available</span>
                                </div>
                                <div class="profile-stat">
                                    <div class="row">
                                        <div class="col-md-4 stat-item">
                                            45 <span>年龄</span>
                                        </div>
                                        <div class="col-md-4 stat-item">
                                            15 <span>老刘</span>
                                        </div>
                                        <div class="col-md-4 stat-item">
                                            2174 <span>积分</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- END PROFILE HEADER -->
                            <!-- PROFILE DETAIL -->
                            <div class="profile-detail">
                                <div class="profile-info">
                                    <h4 class="heading">基本介绍</h4>
                                    <ul class="list-unstyled list-justify">
                                        <li>Birthdate <span>24 Aug, 2016</span></li>
                                        <li>Mobile <span>(124) 823409234</span></li>
                                        <li>Email <span>samuel@mydomain.com</span></li>
                                        <li>Website <span><a href="#">www.themeineed.com</a></span></li>
                                    </ul>
                                </div>
                                <div class="profile-info">
                                    <h4 class="heading">Social</h4>
                                    <ul class="list-inline social-icons">
                                        <li><a href="#" class="facebook-bg"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#" class="twitter-bg"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#" class="google-plus-bg"><i class="fa fa-google-plus"></i></a></li>
                                        <li><a href="#" class="github-bg"><i class="fa fa-github"></i></a></li>
                                    </ul>
                                </div>
                                <div class="profile-info">
                                    <h4 class="heading">关于</h4>
                                    <p>不要迷恋哥</p>
                                </div>
                                <div class="text-center"><a href="#" onclick="editBtnClick()" class="btn btn-primary">编辑</a></div>
                            </div>
                            <!-- END PROFILE DETAIL -->
                        </div>
                        <!-- END LEFT COLUMN -->

                    </div>
                </div>
            </div>
        </div>
        <!-- END MAIN CONTENT -->
    </div>
    <!-- END MAIN -->
    <div class="clearfix"></div>
    <footer>
        <div class="container-fluid">
            <p class="copyright">Copyright &copy; 2017.Company name All rights reserved.</p>
        </div>
    </footer>
</div>
    <!-- END LEFT SIDEBAR -->
    <script src="${basePath}/resources/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="${basePath}/resources/vendor/klorofil-common.js"></script>
	<script>
	$(function(){
		$.ajax({
            url:"${basePath}/admin/getinfo",
            type:"GET",
            success:function (result) {
            	console.log("12345")
                console.log(result);
            	$("#testImg").attr("src","${basePath}/images/"+result.aImg);
            	$("#testName").val(result.aname);
            }
        });
	});
	// 编辑按钮 按下
    function editBtnClick() {
        // 弹出模态对话框
        $("#empUpdateModal").modal({
            backdrop:"static"
        });
    }
	
	function updateClick(){
		$("#empUpdateModal").modal('hide');
		
	}
	
	</script>
</body>
</html>
