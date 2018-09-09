<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<title>小趣社后台</title>
	<%@include file="/common/head.jsp" %>
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="${basePath}/resources/vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="${basePath}/resources/vendor/linearicons/style.css">
	<link rel="stylesheet" href="${basePath}/resources/vendor/chartist/css/chartist-custom.css">
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
				<a href="${basePath}/"><img src="${basePath}/resources/images/admin/logo.png" alt="Amusing Logo" class="img-responsive logo"></a>
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
								<li><a href="${basePath}/admin/myworld"><i class="lnr lnr-user"></i> <span>我的主页</span></a></li>
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
						<li><a href="${basePath}/" class="active"><i class="lnr lnr-home"></i> <span>后台桌面</span></a></li>
						<li><a href="${basePath}/house/list" class=""><i class="lnr lnr-dice"></i> <span>楼房信息</span></a></li>
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
		<!-- END LEFT SIDEBAR -->
		<!-- MAIN -->
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">
					<!-- OVERVIEW -->
					<div class="panel panel-headline">
						<div class="panel-heading">
							<h3 class="panel-title">小区概述</h3>
							<p class="panel-subtitle">记录于: 2018-8-17 </p>
						</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-md-3">
									<div class="metric">
										<span class="icon"><i class="fa fa-download"></i></span>
										<p>
											<span class="number" id="housetotal"></span>
											<span class="title">楼房数</span>
										</p>
									</div>
								</div>
								<div class="col-md-3">
									<div class="metric">
										<span class="icon"><i class="fa fa-eye"></i></span>
										<p>
											<span class="number" id="usertotal"></span>
											<span class="title">居民数</span>
										</p>
									</div>
								</div>
								<div class="col-md-3">
									<div class="metric">
										<span class="icon"><i class="fa fa-shopping-bag"></i></span>
										<p>
											<span class="number" id="stafftotal"></span>
											<span class="title">维修员</span>
										</p>
									</div>
								</div>
								
								<div class="col-md-3">
									<div class="metric">
										<span class="icon"><i class="fa fa-bar-chart"></i></span>
										<p>
											<span class="number">85%</span>
											<span class="title">居民满意度</span>
										</p>
									</div>
								</div>
							</div>
							<!-- <div class="row">
								<div class="col-md-9">
									<div id="headline-chart" class="ct-chart"></div>
								</div>
								<div class="col-md-3">
									<div class="weekly-summary text-right">
										<span class="number">2,315</span> <span class="percentage"><i class="fa fa-caret-up text-success"></i> 12%</span>
										<span class="info-label">Total Sales</span>
									</div>
									<div class="weekly-summary text-right">
										<span class="number">$5,758</span> <span class="percentage"><i class="fa fa-caret-up text-success"></i> 23%</span>
										<span class="info-label">Monthly Income</span>
									</div>
									<div class="weekly-summary text-right">
										<span class="number">$65,938</span> <span class="percentage"><i class="fa fa-caret-down text-danger"></i> 8%</span>
										<span class="info-label">Total Income</span>
									</div>
								</div>
							</div> -->
						</div>
					</div>
					<!-- END OVERVIEW -->
					<div class="row">
						<div class="col-md-6">
							<!-- RECENT PURCHASES -->
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">最近物业费收取情况</h3>
									<!-- <div class="right">
										<button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
										<button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
									</div> -->
								</div>
								<div class="panel-body no-padding">
									<table class="table table-striped">
										<thead>
											<tr>
												<th>业主编号</th>
												<th>姓名</th>
												<th>缴费项目</th>
												<th>金额</th>
												<th>时间</th>
												<th>状态</th>
											</tr>
										</thead>
										<tbody id="mytb">
											
										</tbody>
									</table>
								</div>
								<div class="panel-footer">
									<div class="row">
										<div class="col-md-6"><span class="panel-note"><i class="fa fa-clock-o"></i>过去24小时</span></div>
										<div class="col-md-6 text-right"><a href="${basePath}/payinfo/list" class="btn btn-primary">查看所有的收取情况</a></div>
									</div>
								</div>
							</div>
							<!-- END RECENT PURCHASES -->
						</div>
						<div class="col-md-6">
							<!-- TIMELINE -->
							<div class="panel panel-scrolling">
								<div class="panel-heading">
									<h3 class="panel-title">最近用户的活动</h3>
									<!-- <div class="right">
										<button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
										<button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
									</div> -->
								</div>
								<div class="panel-body">
									<ul class="list-unstyled activity-list">
										<li>
											<img src="${basePath}/resources/images/admin/user1.png" alt="Avatar" class="img-circle pull-left avatar">
											<p><a href="#">张三：</a> 我的宠物猫走丢了，拜托大家帮忙找找，必有重谢，联系我：13755662345 <span class="timestamp">20 minutes ago</span></p>
										</li>
										<li>
											<img src="${basePath}/resources/images/admin/user2.png" alt="Avatar" class="img-circle pull-left avatar">
											<p><a href="#">Daniel</a> has been added as a team member to project <a href="#">System Update</a> <span class="timestamp">Yesterday</span></p>
										</li>
										<li>
											<img src="${basePath}/resources/images/admin/user3.png" alt="Avatar" class="img-circle pull-left avatar">
											<p><a href="#">Martha</a> created a new heatmap view <a href="#">Landing Page</a> <span class="timestamp">2 days ago</span></p>
										</li>
										<li>
											<img src="${basePath}/resources/images/admin/user4.png" alt="Avatar" class="img-circle pull-left avatar">
											<p><a href="#">Jane</a> has completed all of the tasks <span class="timestamp">2 days ago</span></p>
										</li>
										<li>
											<img src="${basePath}/resources/images/admin/user5.png" alt="Avatar" class="img-circle pull-left avatar">
											<p><a href="#">Jason</a> started a discussion about <a href="#">Weekly Meeting</a> <span class="timestamp">3 days ago</span></p>
										</li>
									</ul>
									<button type="button" class="btn btn-primary btn-bottom center-block">查看更多</button>
								</div>
							</div>
							<!-- END TIMELINE -->
						</div>
						<!-- <div class="col-md-6">
							MULTI CHARTS
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">小区满意度</h3>
									<div class="right">
										<button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
										<button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
									</div>
								</div>
								<div class="panel-body">
									<div id="visits-trends-chart" class="ct-chart"></div>
								</div>
							</div>
							END MULTI CHARTS
						</div> -->
					</div>
					<!-- <div class="row">
						<div class="col-md-7">
							TODO LIST
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">待办事项</h3>
									<div class="right">
										<button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
										<button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
									</div>
								</div>
								<div class="panel-body">
									<ul class="list-unstyled todo-list">
										<li>
											<label class="control-inline fancy-checkbox">
												<input type="checkbox"><span></span>
											</label>
											<p>
												<span class="title">3栋203维修</span>
												<span class="short-description">业主tom家电视坏了，需要维修，啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦啦</span>
												<span class="date">Oct 9, 2016</span>
											</p>
											<div class="controls">
												<a href="#"><i class="icon-software icon-software-pencil"></i></a> <a href="#"><i class="icon-arrows icon-arrows-circle-remove"></i></a>
											</div>
										</li>
										<li>
											<label class="control-inline fancy-checkbox">
												<input type="checkbox"><span></span>
											</label>
											<p>
												<span class="title">Retest Upload Scenario</span>
												<span class="short-description">Compellingly implement clicks-and-mortar relationships without highly efficient metrics.</span>
												<span class="date">Oct 23, 2016</span>
											</p>
											<div class="controls">
												<a href="#"><i class="icon-software icon-software-pencil"></i></a> <a href="#"><i class="icon-arrows icon-arrows-circle-remove"></i></a>
											</div>
										</li>
										<li>
											<label class="control-inline fancy-checkbox">
												<input type="checkbox"><span></span>
											</label>
											<p>
												<strong>Functional Spec Meeting</strong>
												<span class="short-description">Monotonectally formulate client-focused core competencies after parallel web-readiness.</span>
												<span class="date">Oct 11, 2016</span>
											</p>
											<div class="controls">
												<a href="#"><i class="icon-software icon-software-pencil"></i></a> <a href="#"><i class="icon-arrows icon-arrows-circle-remove"></i></a>
											</div>
										</li>
									</ul>
								</div>
							</div>
							END TODO LIST
						</div>
						
					</div> -->
					
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
	<!-- END WRAPPER -->
	<!-- Javascript -->

	<script src="${basePath}/resources/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="${basePath}/resources/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
	<script src="${basePath}/resources/vendor/chartist/js/chartist.min.js"></script>
	<script src="${basePath}/resources/vendor/klorofil-common.js"></script>
	<script>
	/* my start */
	function timestampToTime(timestamp) {
         var date = new Date(timestamp);//时间戳为10位需*1000，时间戳为13位的话不需乘1000
         Y = date.getFullYear() + '-';
         M = (date.getMonth()+1 < 10 ? '0'+(date.getMonth()+1) : date.getMonth()+1) + '-';
         D = date.getDate() + ' ';
         h = date.getHours() + ':';
         m = date.getMinutes() + ':';
         s = date.getSeconds();
         return Y+M+D+h+m+s;
     }
	$(function () {
	    $.ajax({
	        url: "${basePath}/house/list",
	        data: "pn=1",
	        type: "GET",
	        success: function (result) {
	        	$("#housetotal").append(result.pageInfo.total);
	        }
	    });
	    $.ajax({
	        url: "${basePath}/user/list",
	        data: "pn=1",
	        type: "GET",
	        success: function (result) {
	        	$("#usertotal").append(result.pageInfo.total);
	        }
	    });
	    $.ajax({
	        url: "${basePath}/staff/list",
	        data: "pn=1",
	        type: "GET",
	        success: function (result) {
	        	$("#stafftotal").append(result.pageInfo.total);
	        }
	    });
	    $.ajax({
            url:"${basePath}/payinfo/list",
            data:"pn=1",
            type:"GET",
            success:function (result) {
            	$("#mytb").empty();
            	var infos = result.pageInfo.list;
            	$.each(infos, function (index, item) {
                    var idTd = $("<td></td>").append(item.user.uid);
                    var nameTd = $("<td></td>").append(item.user.uname);
                    var cname = $("<td></td>").append(item.chargeitem.cname);
                    var pmoney = $("<td></td>").append(item.pmoney);
                    var time = timestampToTime(item.ptime);
                    var timeTd = $("<td></td>").append(time);
                    var statusTd;
                    if(item.pstatus == "已收取"){
                    	statusTd = $("<td><span class='label label-success'>"+item.pstatus+"</span></td>");
                    }else{
                    	statusTd = $("<td><span class='label label-warning'>"+item.pstatus+"</span></td>");
                    }
                    var tr = $("<tr></tr>").append(idTd)
                    .append(nameTd)
                    .append(cname)
                    .append(pmoney)
                	.append(timeTd)
                	.append(statusTd);
                    
                    $("#mytb").append(tr);
            	});
            }
        });
	});
	/* my end */
	
	</script>
</body>

</html>