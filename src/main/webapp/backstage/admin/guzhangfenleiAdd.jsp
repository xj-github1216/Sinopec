<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<title>故障类型添加</title>
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
              <div class="card-header"><h4>故障类型添加</h4></div>
              <div class="card-body">

                <form class="form-horizontal" action="${pageContext.request.contextPath}/faultAdd" method="get" id="FaultAdd" enctype="multipart/form-data">
				  
				  <!-- 故障类型 -->
                  <div class="form-group">
                    <label class="col-xs-12" for="example-text-input">故障类型</label>
                    <div class="col-xs-12">
                      <input class="form-control" type="text" id="example-text-input" name="faultStyle" placeholder="请输入故障类型">
                    </div>
                  </div>
				  
				  <!-- 内容 -->
				 <div class="form-group">
				   <label class="col-xs-12" for="example-textarea-input">内容</label>
				   <div class="col-xs-12">
				     <textarea class="form-control" id="example-textarea-input" name="faultContent" rows="6" placeholder="内容.."></textarea>
				   </div>
				 </div>
				  
                  <div class="example-box" align="center" style="margin-right: 500px">
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