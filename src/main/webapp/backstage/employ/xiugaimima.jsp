<%@ page import="com.igeek.entity.Admin" %>
<%@ page import="com.igeek.entity.Employ" %>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<title>个人中心</title>
<link rel="icon" href="favicon.ico" type="image/ico">
<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/materialdesignicons.min.css" rel="stylesheet">
<link href="../css/style.min.css" rel="stylesheet">
</head>
  
<body>
<div class="lyear-layout-web">
  <div class="lyear-layout-container">
    <%@include file="head.jsp"%>

    <% Employ employ = (Employ) session.getAttribute("employ"); %>

    <!--页面主要内容-->
    <main class="lyear-layout-content">
      
      <div class="container-fluid">
        
        <div class="row">
          <div class="col-lg-12">
            <div class="card">
              <div class="card-body">
                <hr>
                <form method="post" action="${pageContext.request.contextPath}/message?peopleStyle=employ&style=updatePassword&id=<%=employ.getEmployId()%>" class="site-form">
                  <div class="form-group">
                    <label for="oldPassword">原密码</label>
                    <input type="password" class="form-control" name="oldPassword" id="oldPassword" placeholder="请输入原密码" autocomplete="off"/>
                  </div>
                  <div class="form-group">
                    <label for="newPassword">新密码</label>
                    <input type="password" class="form-control" name="newPassword" id="newPassword" placeholder="请输入新密码" autocomplete="off"/>
                  </div>
                  <div class="form-group">
                    <label for="reNewPassword">确认密码</label>
                    <input type="password" class="form-control" name="reNewPassword" id="reNewPassword" placeholder="请确认密码" autocomplete="off">
                  </div>
                  <button type="submit" class="btn btn-primary">保存</button>
                </form>
       
              </div>
            </div>
          </div>
          
        </div>
        
      </div>
      
    </main>
    <!--End 页面主要内容-->
  </div>
</div>

<script type="text/javascript" src="../js/jquery.min.js"></script>
<script type="text/javascript" src="../js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="../js/main.min.js"></script>
</body>
</html>