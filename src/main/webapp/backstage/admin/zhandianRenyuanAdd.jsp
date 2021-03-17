<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<title>站点人员添加</title>
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
        
        <div class="row">
          <div class="col-md-6" style="width: 1500px;height: 600px;">
            <div class="card">
              <div class="card-header"><h4>站点人员添加</h4></div>
              <div class="card-body">
                
                <form class="form-horizontal" action="${pageContext.request.contextPath}/peopleAdd?people=employ" method="post" id="employAddForm">
				  
				  <!-- 姓名 -->
                  <div class="form-group">
                    <label class="col-xs-12" for="name">姓名</label>
                    <div class="col-xs-12">
                      <input class="form-control" type="text" id="name" name="name" placeholder="请输入姓名">
                    </div>
                  </div>
				  
				  <!-- 用户名 -->
				  <div class="form-group">
				    <label class="col-xs-12" for="username">用户名</label>
				    <div class="col-xs-12">
				      <input class="form-control" type="text" id="username" name="username" placeholder="请输入用户名">
				    </div>
				  </div>
				  
				  <!-- 密码 -->
				  <div class="form-group">
				    <label class="col-xs-12" for="password">密码</label>
				    <div class="col-xs-12">
				      <input class="form-control" type="password" id="password"  name="password" placeholder="请输入密码">
				    </div>
				  </div>
				  
				  <!-- 身份证 -->
				  <div class="form-group">
				    <label class="col-xs-12" for="personId">身份证</label>
				    <div class="col-xs-12">
				      <input class="form-control" type="text" id="personId"  name="personId" placeholder="请输入身份证号">
				    </div>
				  </div>
				  
				  <!-- 站点编号 -->
				  <div class="form-group">
				    <label class="col-xs-12" for="stationId">站点编号</label>
				    <div class="col-xs-12">
                        <select name="stationId" id="stationId">
                            <option value="">请选择站点公司编号</option>
                            <c:forEach items="${stationList}" var="station">
                                <option value="${station.stationId}">${station.stationId}</option>
                            </c:forEach>
                        </select>
                        <%--<input class="form-control" type="text" id="stationId" name="stationId" placeholder="请输入站点编号">--%>
				    </div>
				  </div>
				  
				  <!-- 电话 -->
				  <div class="form-group">
				    <label class="col-xs-12" for="phone">电话</label>
				    <div class="col-xs-12">
				      <input class="form-control" type="text" id="phone" name="phone" placeholder="请输入电话号码">
				    </div>
				  </div>

					<!-- 家庭住址 -->
                    <div class="form-group">
                        <label class="col-xs-12" for="address">家庭住址</label>
                        <div class="col-xs-12">
                            <input class="form-control" type="text" id="address" name="address" placeholder="请输入家庭住址">
                        </div>
                    </div>

                    <!-- 入职日期 -->
                    <div class="form-group">
                        <label class="col-xs-12" for="entryDate">入职日期</label>
                        <div class="col-xs-12">
                            <input class="form-control js-datepicker m-b-10" type="text" id="entryDate" name="entryDate" placeholder="请输入入职时间" data-date-format="yyyy-mm-dd" autocomplete="off"/>
                        </div>
                    </div>
				 
				  
                  <div class="example-box" align="center">
                    <button class="btn btn-w-md btn-round btn-success" type="submit">立即提交</button>
                    <button class="btn btn-w-md btn-round btn-info" type="reset">重置</button>
                  </div>
                  
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
<!--日期选择插件-->
<script src="../js/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
<script src="../js/bootstrap-datepicker/locales/bootstrap-datepicker.zh-CN.min.js"></script>
<script type="text/javascript" src="../js/main.min.js"></script>
</body>
</html>