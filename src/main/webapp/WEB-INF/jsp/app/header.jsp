<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
        <html lang="en-US">
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

                <title>小趣社</title>

                <!-- <link rel="shortcut icon" href="images/favicon.png" /> -->
                <!-- ICONS -->
                <link rel="apple-touch-icon" sizes="76x76" href="${basePath}/resources/images/apple-icon.png">
                <link rel="icon" type="image/png" sizes="96x96" href="${basePath}/resources/images/favicon.png">

                <!-- Style Sheet-->
                <link rel="stylesheet" href="${basePath}/resources/app/css/style.css"/>
                <link rel='stylesheet' id='bootstrap-css-css'  href='${basePath}/resources/app/css/bootstrap5152.css?ver=1.0' type='text/css' media='all' />
                <link rel='stylesheet' id='responsive-css-css'  href='${basePath}/resources/app/css/responsive5152.css?ver=1.0' type='text/css' media='all' />
                <link rel='stylesheet' id='pretty-photo-css-css'  href='${basePath}/resources/app/js/prettyphoto/prettyPhotoaeb9.css?ver=3.1.4' type='text/css' media='all' />
                <link rel='stylesheet' id='main-css-css'  href='${basePath}/resources/app/css/main5152.css?ver=1.0' type='text/css' media='all' />
                <link rel='stylesheet' id='custom-css-css'  href='${basePath}/resources/app/css/custom5152.html?ver=1.0' type='text/css' media='all' />

                <link rel="stylesheet" href="${basePath}/resources/app/css/layui.css">
				<style>
					.morelist{
            display: none;
        }
        .list:hover .morelist{
            display: block;
        }
				</style>
        </head>

        <body>

                <!-- Start of Header -->
                <div class="header-wrapper">
                        <header>
                                <div class="container">


                                        <div class="logo-container">
                                                <!-- Website Logo -->
                                                <a href="${basePath}/app"  title="Base Theme">
                                                        <img src="${basePath}/resources/images/logo.png" alt="Amusing">
                                                </a>
                                                <span class="tag-line">同在一个小区，有缘相聚，维护靠大家!</span>
                                        </div>
										

                                        <!-- Start of Main Navigation -->
                                        <nav class="main-nav">
                                              <div class="menu-top-menu-container">
                                                        <ul id="menu-top-menu" class="clearfix">
                                                        		<li>
                                                        		<%
                                                        		String uname = (String)request.getSession().getAttribute("username"); 
                                                        		if(uname != null){ %>
                                                        		<span style="color: white;">欢迎您：<%=uname %></span>
                                                        		<%	
                                                        		}
                                                        		%>
                                                        		</li>
                                                        		<li><a title="小区要遵守的规则" href="#" onclick="alert('暂未开放！');">小区规则</a></li>
                                                                
                                                                <li class="list"><a title="发信息" href="${basePath}/talk/index">交流碰撞</a>
                                                                     <!-- <div class="morelist">
														                <ul>
														                    <li style="list-style:none;"><a>愿望瓶</a></li>
														                    <li style="list-style:none;"><a>留言板</a></li>
														                </ul>
														            </div>    -->
                                                                        
                                                                </li>
                                                                <!-- <li><a href="#">个人中心</a>
                                                                        <ul class="sub-menu">
                                                                                <li><a href="full-width.html">我的空间</a></li>
                                                                                <li><a href="elements.html">注销</a></li>
                                                                        </ul>
                                                                </li> -->   
                                                                <!-- <li><a href="#">皮肤</a>
                                                                        <ul class="sub-menu">
                                                                                <li><a href="blue-skin.html">蓝色皮肤</a></li>
                                                                                <li><a href="green-skin.html">绿色皮肤</a></li>
                                                                                <li><a href="red-skin.html">红色皮肤</a></li>
                                                                                <li><a href="index-2.html">默认皮肤</a></li>
                                                                        </ul>
                                                                </li> -->
                                                                
                                                                <!-- <li><a href="#">More</a>
                                                                        <ul class="sub-menu">
                                                                                <li><a href="full-width.html">Full Width</a></li>
                                                                                <li><a href="elements.html">Elements</a></li>
                                                                                <li><a href="page.html">Sample Page</a></li>
                                                                        </ul>
                                                                </li> -->
                                                                <li><a title="小区的信息" href="${basePath}/moving/listapp">小区动态</a></li>
                                                                <li><a title="业主的缴欠费信息" href="${basePath}/payinfo/listapp">小区广播</a></li>
                                                                <li><a href="${basePath}/app/logout">注销</a></li>
                                                        </ul>
                                                </div>
                                        </nav>
                                        <!-- End of Main Navigation -->

                                </div>
                        </header>
                </div>
                
                <div class="layui-carousel" id="test4">
                 	 <div carousel-item>
					    <div><img src="${basePath}/resources/app/images/loop/xq4.jpg"></div>
					    <div><img src="${basePath}/resources/app/images/loop/xq2.jpeg"></div>
					    <div><img src="${basePath}/resources/app/images/loop/xq3.png"></div>
               		 </div>
                </div>
                