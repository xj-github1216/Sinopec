<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<title>故障报修申请</title>
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
          <div class="col-md-6" style="width: 1500px;height: 650px;">
            <div class="card">
              <div class="card-header"><h4>报修申请</h4></div>
              <div class="card-body">
                
                <form class="form-horizontal" action="${pageContext.request.contextPath}/repairEmploy?style=repairAdd&employId=${employ.employId}" method="post" >
				  
				  <!-- 故障类型 -->
                  <div class="form-group">
                    <label class="col-xs-12" for="faultStyle">故障类型</label>
                    <div class="col-xs-12">
                      <select name="faultStyle" id="faultStyle">
						  <option value="">请选择故障类型</option>
						  <c:forEach items="${voFault.list}" var="fault">
							  <option value="${fault.faultStyle}">${fault.faultStyle}</option>
						  </c:forEach>
					  </select>
                    </div>
                  </div>
				  
				  <!-- 故障描述 -->
				  <div class="form-group">
				    <label class="col-xs-12" for="faultDescribe">故障描述</label>
				    <div class="col-xs-12">
				      <input class="form-control" type="text" id="faultDescribe" name="faultDescribe" placeholder="请输入故障描述">
				    </div>
				  </div>
				  
				  <!-- 报修日期 -->
				  <div class="form-group">
				    <label class="col-xs-12" for="repairDate">报修日期</label>
				    <div class="col-xs-12">
				      <input class="form-control js-datepicker m-b-10" type="text" id="repairDate" name="repairDate" placeholder="请输入报修日期" data-date-format="yyyy-mm-dd" autocomplete="off"/>
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
<script type="../text/javascript" src="js/main.min.js"></script>
</body>
</html>