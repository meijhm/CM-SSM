<%@include file="header.jsp" %>
<%@include file="bootstrap.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--  缴欠费信息开始 -->
<div class="page-container">
    <div class="main-content">
				<div class="layui-container">
				<h3 class="page-title">下面是小区的缴欠费信息：</h3>
				
	            <table class="layui-table" id="emps_table">
	                <thead>
	                    <tr>
							<th>发布时间</th>
							<th>动态内容</th>
							<th>发布者</th>
	                    </tr>
	                </thead>
	                <tbody>
	                </tbody>
	            </table>
        </div>
    </div>			            
	<%--分页条--%>
    <div class="row">
        <div class="col-md-6" id="page_inf">

        </div>
        <div class="col-md-6" >
            <nav aria-label="Page navigation">
                <ul class="pagination" id="navUl">
                </ul>
            </nav>
        </div>
    </div>				
</div>

<script>
	// 当前页面
    var curPage;

    $(function () {
       to_page(1);
    });

    /**
     *  跳转到某个页面
    */
     function to_page(pn) {
        $.ajax({
            url:"${basePath}/moving/listapp",
            data:"pn=" + pn,
            type:"GET",
            success:function (result) {
                //console.log(result);
                build_emps_table(result);
                build_page_nav(result);
            }
        });
    }
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
    /**
     * 信息的显示
     * @param result 服务器返回的json数据
     */
    function build_emps_table(result) {
        $("#emps_table tbody").empty();
        var emps = result.pageInfo.list;
		//jQuery提供的遍历方法,回调函数：索引和每一项信息
        $.each(emps, function (index, item) {
            var time = timestampToTime(item.mTime);
            var nameTd = $("<td></td>").append(time);
            var cname = $("<td></td>").append(item.mMsg);
            var pmoney = $("<td></td>").append(item.lName);
            
            var tr = $("<tr></tr>")
            .append(nameTd)
            .append(cname)
            .append(pmoney);
            $("#emps_table tbody").append(tr);
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
            "页,总"+pageInfo.total +
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

	</script>
<!--  缴欠费信息结束 -->
<%@include file="footer.jsp" %>