<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录界面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/login/css/index.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/login/css/popup.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/login/css/normalize.css" /><!--CSS RESET-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/login/js/jquery.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/login/js/popup.js"></script>
    <script src="${pageContext.request.contextPath}/login/js/jquery-1.11.0.min.js" type="text/javascript"></script>
</head>
<body>
<script>

    <%-- 登录失败弹出框 --%>
    <c:if test="${msg!=null}">
        alert("${msg}");
    </c:if>

    $(document).ready(function () {
        var whei = $(window).width()
        $("html").css({ fontSize: whei / 24 });
        $(window).resize(function () {
            var whei = $(window).width();
            $("html").css({ fontSize: whei / 24 })
        });
    });

</script>
<div class="main">

    <div class="header">
        <div class="header-center fl">
            <div class="header-title">
                后台登录界面
            </div>
            <div class="header-img"></div>
        </div>
        <div class="header-bottom fl"></div>

    </div>

    <div class="content">
        <div class="content-left">
            <!--<img src="images/d.png" alt="">-->
        </div>
        <div class="content-right">
            <form action="../login" method="post" id="LoginForm">
                <div class="right-infp">
                    <div class="right-infp-name">
                        <input type="text" name="username" placeholder="请输入用户名" maxlength="12" autocomplete="off" required="required">
                    </div>
                    <div class="right-infp-name">
                        <input type="password" name="password" placeholder="请输入密码" autocomplete="off" required="required">
                    </div>

                        <input type="radio" name="identity" value="admin" checked>管理员
                        &nbsp;&nbsp;<input type="radio" name="identity" value="employ">站点人员
                        &nbsp;&nbsp;<input type="radio" name="identity" value="serviceman">运维人员


                    <div class="right-infp-btn" style="margin-top: 20px">
                        <button class="btn" type="submit">登录</button>
                    </div>
                </div>
            </form>
        </div>
    </div>


</div>


</body>

</html>