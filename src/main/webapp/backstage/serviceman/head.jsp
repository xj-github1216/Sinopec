<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<!--左侧导航-->
<aside class="lyear-layout-sidebar">

    <!-- logo -->
    <div id="logo" class="sidebar-header">
        <h3 style="margin-top: 15px; margin-bottom: 10px">中石化运维管理系统</h3>
    </div>
    <div class="lyear-layout-sidebar-scroll">

        <nav class="sidebar-main">
            <ul class="nav nav-drawer">
                <li class="nav-item active"> <a href="serviceHoutaiIndex.jsp"><i class="mdi mdi-home"></i> 后台首页</a> </li>
                <li class="nav-item nav-item-has-subnav">
                    <a href="javascript:void(0)"><i class="mdi mdi-account"></i> 个人中心</a>
                    <ul class="nav nav-subnav">
                        <li> <a href="gerenxinxi.jsp">个人信息</a> </li>
                        <li> <a href="xiugaimima.jsp">修改密码</a> </li>
                    </ul>
                </li>
                <li class="nav-item nav-item-has-subnav">
                    <a href="javascript:void(0)"><i class="mdi mdi-palette"></i> 公告信息管理</a>
                    <ul class="nav nav-subnav">
                        <li> <a href="serviceGonggao.jsp">公告信息列表</a> </li>
                    </ul>
                </li>
                <li class="nav-item nav-item-has-subnav">
                    <a href="javascript:void(0)"><i class="mdi mdi-format-align-justify"></i>故障报修管理</a>
                    <ul class="nav nav-subnav">
                        <li> <a href="repairState0.jsp">未处理报修列表</a> </li>
                        <li> <a href="repairState1.jsp">报修列表处理中</a> </li>
                    </ul>
                </li>
                <li class="nav-item nav-item-has-subnav">
                    <a href="javascript:void(0)"><i class="mdi mdi-file-outline"></i> 故障订单管理</a>
                    <ul class="nav nav-subnav">
                        <li> <a href="serviceBaoxiudingdan.jsp">故障订单列表</a> </li>
                    </ul>
                </li>
            </ul>
        </nav>
    </div>

</aside>
<!--End 左侧导航-->

<!--头部信息-->
<header class="lyear-layout-header">

    <nav class="navbar navbar-default">
        <div class="topbar">

            <div class="topbar-left">
                <div class="lyear-aside-toggler">
                    <span class="lyear-toggler-bar"></span>
                    <span class="lyear-toggler-bar"></span>
                    <span class="lyear-toggler-bar"></span>
                </div>
                <span class="navbar-page-title"> 后台首页 </span>
            </div>

            <ul class="topbar-right">
                <li class="dropdown dropdown-profile">
                    <a href="javascript:void(0)" data-toggle="dropdown">
                        <span style="font-size: x-large">欢迎进入运维人员界面<span class="caret"></span></span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-right">
                        <li> <a href="../../login/index.jsp"><i class="mdi mdi-logout-variant"></i> 退出登录</a> </li>
                    </ul>
                </li>

            </ul>

        </div>
    </nav>

</header>
<!--End 头部信息-->
</html>
