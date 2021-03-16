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
    
    <!--页面主要内容-->
    <main class="lyear-layout-content">
      
      <div class="container-fluid">

          <%--拿到会话中的admin对象--%>
          <% Employ employ = (Employ)session.getAttribute("employ"); %>
        
        <div class="row">
          <div class="col-lg-12">
            <div class="card">
              <div class="card-body">
                <hr>
                <form method="post" action="${pageContext.request.contextPath}/message?peopleStyle=employ&style=updateMessage&id=<%=employ.getEmployId()%>&stationId=<%=employ.getEmployId()%>" class="site-form">
                  <div class="form-group">
                    <label for="id">id</label>
                    <input type="text" class="form-control" name="id" id="id" value="<%= employ.getEmployId() %>" disabled="disabled" />
                  </div>
                  <div class="form-group">
                    <label for="name">姓名</label>
                    <input type="text" class="form-control" name="name" id="name" value="<%= employ.getName() %>" disabled="disabled" />
                  </div>
                  <div class="form-group">
                    <label for="personId">身份证号</label>
                    <input type="text" class="form-control" name="personId" id="personId" placeholder="请输入身份证号" value="<%=employ.getPersonId()%>" disabled="disabled">
                  </div>
                  <div class="form-group">
                    <label for="entryDate">入职日期</label>
                    <input type="text" class="form-control" name="entryDate" id="entryDate" value="<%= employ.getEntryDate() %>" disabled="disabled" />
                  </div>
                  <div class="form-group">
                    <label for="stationId">站点id</label>
                    <input type="text" class="form-control" name="stationId" id="stationId" value="<%= employ.getStationId() %>" disabled="disabled" />
                  </div>
                  <div class="form-group">
                    <label for="username">用户名</label>
                    <input type="text" class="form-control" name="username" id="username" value="<%= employ.getUsername() %>"/>
                  </div>
                    <div class="form-group">
                        <label for="phone">手机号</label>
                        <input type="text" class="form-control" name="phone" id="phone" placeholder="请输入手机号" value="<%=employ.getPhone()%>">
                    </div>
                    <div class="form-group">
                        <label for="address">家庭地址</label>
                        <input type="text" class="form-control" name="address" id="address" placeholder="请输入家庭地址" value="<%=employ.getAddress()%>">
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