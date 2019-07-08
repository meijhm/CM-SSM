<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">

<head>
    <title>楼房信息</title>
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
            <a href="${basePath}/"><img src="${basePath}/resources/images/logo.png" alt="Amusing Logo"
                                        class="img-responsive logo"></a>
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
                <a class="btn btn-success update-pro"
                   href="${basePath}/applogin"
                   title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>前端</span></a>
            </div>
            <div id="navbar-menu">
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle icon-menu" data-toggle="dropdown">
                            <i class="lnr lnr-alarm"></i>
                            <span class="badge bg-danger">5</span>
                        </a>
                        <ul class="dropdown-menu notifications">
                            <li><a href="#" class="notification-item"><span class="dot bg-warning"></span>System space
                                is almost full</a></li>
                            <li><a href="#" class="notification-item"><span class="dot bg-danger"></span>You have 9
                                unfinished tasks</a></li>
                            <li><a href="#" class="notification-item"><span class="dot bg-success"></span>Monthly report
                                is available</a></li>
                            <li><a href="#" class="notification-item"><span class="dot bg-warning"></span>Weekly meeting
                                in 1 hour</a></li>
                            <li><a href="#" class="notification-item"><span class="dot bg-success"></span>Your request
                                has been approved</a></li>
                            <li><a href="#" class="more">See all notifications</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i
                                class="lnr lnr-question-circle"></i> <span>帮助</span> <i
                                class="icon-submenu lnr lnr-chevron-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">基本用法</a></li>
                            <%--<li><a href="#">Working With Data</a></li>
                            <li><a href="#">Security</a></li>
                            <li><a href="#">Troubleshooting</a></li>--%>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><img src="" id="myhead" height="22px" class="img-circle" alt="Avatar">
                            <span><%=request.getSession().getAttribute("adminname") %></span> <i
                                    class="icon-submenu lnr lnr-chevron-down"></i></a>
                        <ul class="dropdown-menu">
                            <li><a href="${basePath}/admin/myworld"><i class="lnr lnr-user"></i> <span>我的主页</span></a>
                            </li>
                            <%--<li><a href="#"><i class="lnr lnr-envelope"></i> <span>消息</span></a></li>
                            <li><a href="#"><i class="lnr lnr-cog"></i> <span>设置</span></a></li>--%>
                            <li><a href="${basePath}/admin/logout"><i class="lnr lnr-exit"></i> <span>注销</span></a></li>
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
                    <li><a href="${basePath}/" class=""><i class="lnr lnr-home"></i> <span>后台桌面</span></a></li>
                    <li><a href="${basePath}/house/list" class="active"><i class="lnr lnr-dice"></i>
                        <span>楼房信息</span></a></li>
                    <li><a href="${basePath}/user/list" class=""><i class="lnr lnr-user"></i> <span>业主信息</span></a></li>
                    <li><a href="${basePath}/staff/list" class=""><i class="lnr lnr-user"></i> <span>维修员信息</span></a>
                    </li>
                    <li><a href="${basePath}/chargeitem/list" class=""><i class="lnr lnr-inbox"></i>
                        <span>收费项目</span></a></li>
                    <li><a href="${basePath}/payinfo/list" class=""><i class="lnr lnr-bookmark"></i> <span>缴欠费信息</span></a>
                    </li>
                    <li><a href="${basePath}/repairinfo/list" class=""><i class="lnr lnr-pencil"></i>
                        <span>申请维修信息</span></a></li>
                    <li><a href="${basePath}/dorepair/list" class=""><i class="lnr lnr-enter"></i>
                        <span>维修信息处理</span></a></li>
                    <li><a href="${basePath}/moving/list" class=""><i class="lnr lnr-heart"></i> <span>小区动态信息</span></a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
    <!-- END LEFT SIDEBAR -->
    <!-- MAIN -->
    <div class="main">
        <!-- 员工修改模态框 -->
        <div class="modal fade" id="empUpdateModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title">修改</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal">
                            <div class="form-group">
                                <label for="id_update_label" class="col-sm-2 control-label">id</label>
                                <div class="col-sm-10">
                                    <p class="form-control-static" id="id_update_label" name="hid"></p>
                                    <span class="help-block"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="name_update_input" class="col-sm-2 control-label">楼房编号</label>
                                <div class="col-sm-10">
                                    <input type="text" name="hcode" class="form-control" id="name_update_input"
                                           placeholder="请输入这栋楼的名字">
                                    <span class="help-block"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="address_update_input" class="col-sm-2 control-label">位置</label>
                                <div class="col-sm-10">
                                    <input type="text" name="hsite" class="form-control" id="address_update_input"
                                           placeholder="请输入这栋楼的位置">
                                    <span class="help-block"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="area_update_input" class="col-sm-2 control-label">面积</label>
                                <div class="col-sm-10">
                                    <input type="text" name="harea" class="form-control" id="area_update_input"
                                           placeholder="请输入这栋楼的占地面积">
                                    <span class="help-block"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="height_update_input" class="col-sm-2 control-label">层数</label>
                                <div class="col-sm-10">
                                    <input type="text" name="hheight" class="form-control" id="height_update_input"
                                           placeholder="请输入这栋楼的总层数">
                                    <span class="help-block"></span>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-primary" id="update_save_button">更新</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- 员工新增模态框 -->
        <div class="modal fade" id="empAddModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                                aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabel">新增</h4>
                    </div>
                    <div class="modal-body">
                        <form class="form-horizontal">
                            <div class="form-group">
                                <label for="name_add_input" class="col-sm-2 control-label">楼房编号</label>
                                <div class="col-sm-10">
                                    <input type="text" name="hcode" class="form-control" id="name_add_input"
                                           placeholder="请输入这栋楼的名字">
                                    <span class="help-block"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="address_add_input" class="col-sm-2 control-label">位置</label>
                                <div class="col-sm-10">
                                    <input type="text" name="hsite" class="form-control" id="address_add_input"
                                           placeholder="请输入这栋楼的位置">
                                    <span class="help-block"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="area_add_input" class="col-sm-2 control-label">面积</label>
                                <div class="col-sm-10">
                                    <input type="text" name="harea" class="form-control" id="area_add_input"
                                           placeholder="请输入这栋楼的占地面积">
                                    <span class="help-block"></span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="height_add_input" class="col-sm-2 control-label">层数</label>
                                <div class="col-sm-10">
                                    <input type="text" name="hheight" class="form-control" id="height_add_input"
                                           placeholder="请输入这栋楼的总层数">
                                    <span class="help-block"></span>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-primary" id="add_save_button">保存</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- MAIN CONTENT -->
        <div class="main-content">
            <div class="container-fluid">
                <h3 class="page-title">楼房列表</h3>
                <%--按钮--%>
                <div class="row">
                    <div class="col-md-4 col-md-offset-8">
                        <button class="btn-primary" id="addBtn">新增</button>
                        <button class="btn-danger" id="batchDeleteBtn">批量删除</button>
                    </div>
                </div>
                <%--信息--%>
                <div class="row">
                    <div class="col-md-12">
                        <table class="table table-hover table-striped table-bordered" id="emps_table">
                            <thead>
                            <tr>
                                <th><input type="checkbox" id="all_check_box"/></th>
                                <th>id</th>
                                <th>楼房编号</th>
                                <th>位置</th>
                                <th>面积</th>
                                <th>层数</th>
                                <th>操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>

                    </div>
                </div>


            </div>
            <!-- <div class="row">
            <div style="position: fixed;top:500px;left:300px;font-size: 15px;" id="page_info_area">
            </div>
            <div style="position: fixed;top:470px;left:800px;font-size: 15px;" id="page_nav_area">
            </div>
            </div> -->
            <%--分页条--%>
            <div class="row">
                <div style="position: fixed;top:500px;left:300px;font-size: 15px;" class="col-md-6" id="page_inf">

                </div>
                <div style="position: fixed;top:470px;left:800px;font-size: 15px;" class="col-md-6">
                    <nav aria-label="Page navigation">
                        <ul class="pagination" id="navUl">
                        </ul>
                    </nav>
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
<!-- END WRAPPER -->
<!-- Javascript -->
<script src="${basePath}/resources/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
<script src="${basePath}/resources/vendor/klorofil-common.js"></script>
<script>
    $(function () {
        $.ajax({
            url: "${basePath}/admin/getinfo",
            type: "GET",
            success: function (result) {
                console.log("当前管理员：" + result);
                $("#myhead").attr("src", "${basePath}/static/images/" + result.aImg);
            }
        });
    });
    // 当前页面
    var curPage;

    $(function () {
//        发送ajax请求
        to_page(1);
    });

    /**
     *  跳转到某个页面
     */
    function to_page(pn) {
        $.ajax({
            url: "${basePath}/house/list",
            data: "pn=" + pn,
            type: "GET",
            success: function (result) {
                //console.log(result);
                // 显示员工信息
                build_emps_table(result);
//                显示分页信息
                build_page_nav(result);

            }
        });
    }

    /**
     * 员工信息的显示
     * @param result 服务器返回的json数据
     */
    function build_emps_table(result) {
        // 先清空上一次的内容
        $("#emps_table tbody").empty();

        // 拿到json中的员工列表
        var emps = result.pageInfo.list;

//            jQuery提供的遍历方法,回调函数：索引和每一项信息
        $.each(emps, function (index, item) {
            var checkBox = $("<td></td>").append($("<input type='checkbox' class='check_box'>"));
            var idTd = $("<td></td>").append(item.hid);
            var nameTd = $("<td></td>").append(item.hcode);
            var genderTd = $("<td></td>").append(item.hsite);
            var emailTd = $("<td></td>").append(item.harea);
            var departmentTd = $("<td></td>").append(item.hheight);

            var editBtn = $("<button></button>").addClass("btn-primary btn-xs")
                .append($("<span></span>").addClass("glyphicon glyphicon-pencil"))
                .append("编辑").click(function () {
                    editBtnClick(item);
                });

            var delBtn = $("<button></button>").addClass("btn-danger btn-xs")
                .append($("<span></span>").addClass("glyphicon glyphicon-trash"))
                .append("删除").click(function () {
                    deleteOneBtnClick(item);
                });
            var btnTd = $("<td></td>")
                .append(editBtn)
                .append(" ")
                .append(delBtn);
            var tr = $("<tr></tr>").append(checkBox)
                .append(idTd)
                .append(nameTd)
                .append(genderTd)
                .append(emailTd)
                .append(departmentTd)
                .append(btnTd);
            $("#emps_table tbody").append(tr);
        });
    }

    // 选择总CheckBox时，所有元素会被选中
    $("#all_check_box").click(function () {
        // 使用prop获取原生元素值
        $(".check_box").prop("checked", $(this).prop("checked"));
    });
    // 可以在文档加载完成之后给某个元素绑定单击 事件
    $(document).on("click", ".check_box", function () {
        var flag = $(".check_box:checked").length == $(".check_box").length;
        $("#all_check_box").prop("checked", flag);
    });

    /**
     * 单行删除按钮被按下
     */
    function deleteOneBtnClick(employee) {
        if (confirm("确认删除【" + employee.hcode + "】的信息吗")) {
            $.ajax({
                url: "${basePath}/house/del/" + employee.hid,
                type: "DELETE",
                success: function (result) {
                    if (result.code == 500) {
                        alert("删除失败，楼房【" + employee.hcode + "】已在业主中被引用！")
                    }
                    to_page(curPage);
                }
            });
        }
    }

    // 编辑按钮 按下
    function editBtnClick(employee) {
        // 将当前信息添加到模态框中
        $("#id_update_label").text(employee.hid);
        $("#name_update_input").val(employee.hcode);
        $("#address_update_input").val(employee.hsite);
        $("#area_update_input").val(employee.harea);
        $("#height_update_input").val(employee.hheight);

        // 将ID保存至更新按钮中
        $("#update_save_button").attr("hid", employee.hid);
        // 弹出模态对话框
        $("#empUpdateModal").modal({
            backdrop: "static"
        });
    }

    /**
     * 分页信息的显示
     * @param result 服务器返回的json数据
     */
    function build_page_nav(result) {
        // 先清空
        $("#page_inf").empty();
        $("#navUl").empty();
        var pageInfo = result.pageInfo;
        curPage = pageInfo.pageNum;
        // 添加左侧页数信息
        $("#page_inf").append("当前" + pageInfo.pageNum +
            "页,总" + pageInfo.pages +
            "页,总" + pageInfo.total +
            "记录");

        var firstPageLi = $("<li></li>").append($("<a></a>").append("首页"));
        var lastPageLi = $("<li></li>").append($("<a></a>").append("末页"));
        var prePageLi = $("<li></li>").append($("<a></a>").append("&laquo;"));
        var nextPageLI = $("<li></li>").append($("<a></a>").append("&raquo;"));

        $("#navUl").append(firstPageLi);
        $("#navUl").append(prePageLi);

        // 添加首页导航
        // 只有当不是第一页时显示
        if (pageInfo.pageNum == 1) {
            firstPageLi.addClass("disabled");
        }
        if (!pageInfo.hasPreviousPage) {
            prePageLi.addClass("disabled");
        } else {
            prePageLi.click(function () {
                to_page(pageInfo.pageNum - 1);
            });
        }

        var navNums = pageInfo.navigatepageNums;
        // 遍历当前显示页数
        $.each(navNums, function (index, item) {
            var li = $("<li></li>").append($("<a></a>").append(item))
                .click(function () {
                    to_page(item);
                });
            if (item == pageInfo.pageNum) {
                li.addClass("active");
            }
            $("#navUl").append(li);
        });

        $("#navUl").append(nextPageLI);
        $("#navUl").append(lastPageLi);
        if (!pageInfo.hasNextPage) {
            nextPageLI.addClass("disabled");
        } else {
            nextPageLI.click(function () {
                to_page(pageInfo.pageNum + 1);
            });
        }
        // 添加末页导航
        if (pageInfo.pageNum == pageInfo.pages) {
            lastPageLi.addClass("disabled");
        }
        firstPageLi.click(function () {
            to_page(1);
        });
        lastPageLi.click(function () {
            to_page(pageInfo.pages);
        });
    }

    /**
     * 批量删除按钮点击绑定事件
     */
    $("#batchDeleteBtn").click(function () {
        var allName = "";
        var allId = "";
        $.each($(".check_box:checked"), function (index, item) {
            // 拿到每个选中的每个员工名字,索引为2
            var name = $(this).parents("tr").find("td:eq(2)").text();
            var id = $(this).parents("tr").find("td:eq(1)").text();
            if (allName == "") {
                allName += name;
                allId += id;
            } else {
                allName += "," + name;
                allId += "," + id;
            }
        });
        if ("" != (allName) && confirm("确定要删除【" + allName + "】的信息吗")) {
            $.ajax({
                url: "${basePath}/house/del/" + allId,
                type: "DELETE",
                success: function (result) {
                    if (result.code == 500) {
                        alert("删除失败，楼房【" + allName + "】中有已在业主中被引用！")
                    }
                    to_page(curPage);
                }
            });
        }
    });
    /**
     *  点击新增按钮，发送ajax请求获取部门列表
     */
    $("#addBtn").click(function () {
//        先清空表单信息,调用dom对象的重置方法
        $("#empAddModal form")[0].reset();
        // 发送ajax请求获得部门信息
        /* getDeptMessage("#empAddModal select"); */
        // 弹出模态对话框
        $("#empAddModal").modal({
            backdrop: "static"
        });
    });
    <%-- function getDeptMessage(ele) {
        // 发送ajax请求获得部门信息
        $.ajax({
            url:"<%=path%>/depts",
            type:"GET",
            success:function(result){
                $(ele).empty();
//                console.log(result);
                // 将查询到的信息添加到下拉列表中
                $.each(result.extend.depts,function (index, item) {
                    var option = $("<option></option>").append(item.deptName).attr("value",item.deptId);
                    $(ele).append(option);
                });
            }
        });
    } --%>

    /**
     *  输入框校验状态的改变
     */
    function show_validate_msg(ele, state, text) {
        // 先清空上一次内容
        $(ele).parent().removeClass("has-error has-success");
        $(ele).next("span").text("");

        if (state == "success") {
            $(ele).parent().addClass("has-success");
            $(ele).next("span").text(text);
        } else {
            $(ele).parent().addClass("has-error");
            $(ele).next("span").text(text);
        }
    }

    /**
     *  前端校验表单
     **/
    /*         function jQuery_validate_name() {
            // 1、先通过jQuery校验名字格式
            var name = $("#name_add_input").val();
            var nameReg = /(^[a-zA-Z0-9_-]{5,20}$)|(^[\u2E80-\u9FFF]{2,5})/;
            if (!nameReg.test(name)) {
                //alert("用户名需要为2-5位数字或5-20位字母和数字的组合");
                show_validate_msg("#name_add_input", "fail", "用户名需要为2-5位数字或5-20位字母和数字的组合");
                return false;
            } else {
                show_validate_msg("#name_add_input", "success", "");
            }
            return true;
        } */
    /*          function jQuery_validate_email() {
            // 2、通过jQuery校验邮箱
            var email = $("#email_add_input").val();
            var emailReg = /^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/;
            if (!emailReg.test(email)) {
    //            alert("邮箱格式不正确");
                show_validate_msg("#email_add_input", "error", "邮箱格式不正确");
                return false;
            } else {
                show_validate_msg("#email_add_input", "success", "");
            }
            return true;
        }
        $("#email_add_input").change(function () {
            var bool = jQuery_validate_email();
            // 邮箱格式不正确
            if (!bool) {
                $("#add_save_button").attr("validate_state", "error");
            } else {
                $("#add_save_button").attr("validate_state", "success");
            }
        }); */
    // 名字输入框ajax校验
    $("#name_add_input").change(function () {

        // 若前端校验不成功则不进行后端校验
        /*             var bool = jQuery_validate_name();
                if (!bool) {
                    return false;
                } */

        var name = this.value;
        $.ajax({
            url: "${basePath}/house/validateName",
            data: "hcode=" + name,
            type: "GET",
            success: function (result) {
                //alert(result.code)
                if (result.code == 200) {
                    // 可用
                    show_validate_msg("#name_add_input", "success", "楼房名可用");
                    // 名字可用，可以保存信息至数据库
                    $("#add_save_button").attr("validate_state", "success");
                } else {
                    show_validate_msg("#name_add_input", "error", "楼房名已存在");
                    // 名字不可用，不能保存
                    $("#add_save_button").attr("validate_state", "error");
                }
            }
        });
    });

    /**
     *  点击保存按钮，发送ajax请求
     */
    $("#add_save_button").click(function () {
        // 如果校验失败，直接返回

        // 通过ajax校验名字是否重复,判断validate_state的值是成功还是失败,失败不能保存
        if ($(this).attr("validate_state") != "success") {
//            alert($(this).attr("validate_state"));
            return false;
        }
//        alert($("#empAddModal form").serialize());
        $.ajax({
            url: "${basePath}/house/save",
            method: "POST",
            // 序列化的表单数据，通过jQuery的serialize方法
            data: $("#empAddModal form").serialize(),
            success: function (result) {
                console.log(result);

                if (result.code == 200) {
//                   关闭模态框
                    $("#empAddModal").modal('hide');
//                  跳到首页
                    to_page(1);
                } else {
                    if (undefined != result.msg.extend.err_msg.hcode) {
                        show_validate_msg("#name_add_input", "error", result.msg.extend.err_msg.hcode);
                    }
                }
            }
        });
    });

    // 修改的更新按钮被按下
    $("#update_save_button").click(function () {

        //alert($("#empUpdateModal form").serialize());

        // 直接使用ajax发送PUT请求会导致TomCat绑定数据失败，因为TomCat不会处理PUT请求，这个时候Spring提供了一种解决方法，
        // 配置httpPutFormContentFilter过滤器，将PUT请求中的数据包装成一个新的REquest
        var empId = $(this).attr("hid");
        $.ajax({
            url: "${basePath}/house/update/" + empId,
            type: "PUT",
            data: $("#empUpdateModal form").serialize(),
            success: function (result) {
//                console.log(result);
                if (result.code == 200) {
                    //  关闭模态框
                    $("#empUpdateModal").modal('hide');
                    // 跳到修改页
                    to_page(curPage);
                }
            }
        });
    })
</script>
</body>

</html>