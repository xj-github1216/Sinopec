<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<title>故障报修管理</title>
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
          <div class="col-lg-12">
            <div class="card">
              <div class="card-toolbar clearfix">
                <form class="pull-right search-bar" method="post" action="${pageContext.request.contextPath}/repairEmploy?style=searchState12&employId=${employ.employId}" role="form">
                  <div class="input-group">
                    <div class="input-group-btn">
                      <input type="hidden" name="searchMode" id="search-field" value="faultStyle">
                      <button class="btn btn-default dropdown-toggle" id="search-btn" data-toggle="dropdown" type="button" aria-haspopup="true" aria-expanded="false">
                      故障类型 <span class="caret"></span>
                      </button>
                      <ul class="dropdown-menu">
                        <li> <a tabindex="-1" href="javascript:void(0)" data-field="faultStyle">故障类型</a> </li>
                        <li> <a tabindex="-1" href="javascript:void(0)" data-field="id">Id</a> </li>
                        <li> <a tabindex="-1" href="javascript:void(0)" data-field="state">处理状态</a> </li>
                      </ul>
                    </div>
                    <input type="text" class="form-control" value="" name="keyword" placeholder="请输入查询内容" autocomplete="off">
                  </div>
                </form>
              </div>
              <div class="card-body">
                
                <div class="table-responsive">
                  <table class="table table-bordered" style="text-align: center">
                    <thead>
                      <tr class="btn-secondary">
                        <th style="text-align: center">id</th>
                        <th style="text-align: center">故障类型</th>
                        <th style="text-align: center">故障描述</th>
                        <th style="text-align: center">处理状态</th>
                        <th style="text-align: center">运维人员id</th>
                        <th style="text-align: center">报修日期</th>
                        <th style="text-align: center">操作</th>
                      </tr>
                    </thead>
                    <tbody>

                    <c:forEach items="${repairState12PageVo.list}" var="repair">
                      <tr>
                        <td>${repair.id}</td>
                        <td>${repair.faultStyle}</td>
                        <td>${repair.faultDescribe}</td>
                        <c:if test="${repair.state == '已处理'}">
                          <td><font class="text-success">${repair.state}</font></td>
                        </c:if>
                        <c:if test="${repair.state == '处理中'}">
                          <td><font class="text-info">${repair.state}</font></td>
                        </c:if>
                        <td>${repair.servicemanId}</td>
                        <td>${repair.repairDate}</td>
                        <td>
                          <div class="btn-group">

                              <%--接单操作--%>
                            <button class="btn btn-xs btn-cyan" data-toggle="modal" data-target="#${repair.id}" data-whatever="@mdo">详情</button>
                            <div class="modal fade" id="${repair.id}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" style="
                            margin-top: 150px">
                              <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                  <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" id="exampleModalLabel">具体详情</h4>
                                  </div>
                                  <div class="modal-body">
                                    <form method="post" action="${pageContext.request.contextPath}/edit?style=repairServiceman&id=${repair.id}&servicemanId=${serviceman.servicemanId}" >
                                      <table style="text-align: center;" align="center">
                                        <c:forEach items="${repairDetails}" var="detail">
                                          <c:if test="${repair.id == detail.id}">

                                            <%-- 接单框表格内容渲染 --%>
                                            <tr>
                                              <td><label  class="control-label">故障id</label></td>
                                              <td><input type="text" name="id" class="form-control" value="${detail.id}" disabled="disabled"></td>
                                              <td><label  class="control-label">故障类型</label></td>
                                              <td><input type="text" name="faultStyle" class="form-control" value="${detail.faultStyle}" disabled="disabled"></td>
                                            </tr>
                                            <tr>
                                              <td><label  class="control-label">故障描述</label></td>
                                              <td><input type="text" name="faultDescribe" class="form-control" value="${detail.faultDescribe}" disabled="disabled"></td>
                                              <td><label class="control-label">报修日期</label></td>
                                              <td><input type="text" name="repairDate" class="form-control" value="${detail.repairDate}" disabled="disabled"></td>
                                            </tr>
                                            <tr>
                                              <td><label  class="control-label">运维人员id</label></td>
                                              <td><input type="text" name="employId" class="form-control" value="${detail.servicemanId}" disabled="disabled"></td>
                                              <td><label  class="control-label">运维人员姓名</label></td>
                                              <td><input type="text" name="employName" class="form-control" value="${detail.servicemanName}" disabled="disabled"></td>
                                            </tr>
                                            <tr>
                                              <td><label  class="control-label">运维人员电话</label></td>
                                              <td><input type="text" name="employPhone" class="form-control" value="${detail.servicemanPhone}" disabled="disabled"></td>
                                              <td><label class="control-label">站点id</label></td>
                                              <td><input type="text" name="stationId" class="form-control" value="${detail.stationId}" disabled="disabled"></td>
                                            </tr>
                                            <tr>
                                              <td><label class="control-label">站点地址</label></td>
                                              <td><input type="text" name="stationAddress" class="form-control" value="${detail.stationAddress}" disabled="disabled"></td>
                                              <td><label class="control-label">处理状态</label></td>
                                              <td><input type="text" name="state" class="form-control" value="${detail.state}" disabled="disabled"></td>
                                            </tr>
                                            <%-- 接单框表格渲染结束 --%>

                                          </c:if>
                                        </c:forEach>

                                      </table>

                                      <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                      </div>

                                    </form>
                                  </div>

                                </div>
                              </div>
                            </div>
                              <%--接单结束--%>

                          </div>
                        </td>
                      </tr>
                    </c:forEach>


                    </tbody>
                  </table>
                </div>

                <%-- 分页 --%>
                <ul class="pagination" style="margin-top: 10px;margin-bottom: 10px">

                  <%-- 若在第一页，则不可以点击上一页 --%>
                  <c:if test="${repairState12PageVo.pageNow == 1 || repairState12PageVo.list.size()==0}">
                    <li class="disabled">
                      <a href="JavaScript:void(0)"><span>«</span></a>
                    </li>
                  </c:if>

                  <%-- 若不在第一页，则可以点击上一页 --%>
                  <c:if test="${repairState12PageVo.pageNow != 1}">
                    <li>
                      <a href="${pageContext.request.contextPath}/peopleSearch?peopleStyle=repairState2&searchIndex=${repairState12PageVo.style}&keyword=${repairState12PageVo.value}&pageNow=${repairState12PageVo.pageNow-1}&servicemanId=${serviceman.servicemanId}">«</a>
                    </li>
                  </c:if>

                  <%-- 中间页迭代 --%>
                  <c:forEach begin="1" end="${repairState12PageVo.myPages}" var="page">

                    <%--若当前页pageNow正好是page，则显示被点击的状态--%>
                    <c:if test="${repairState12PageVo.pageNow == page}">
                      <li class="active">
                        <a href="JavaScript:void(0)">${page}</a>
                      </li>
                    </c:if>

                    <%--若当前页pageNow不是page，则显示可以点击的状态--%>
                    <c:if test="${repairState12PageVo.pageNow != page}">
                      <li><a href="${pageContext.request.contextPath}/peopleSearch?peopleStyle=repairState2&searchIndex=${repairState12PageVo.style}&keyword=${repairState12PageVo.value}&pageNow=${page}&servicemanId=${serviceman.servicemanId}">${page}</a></li>
                    </c:if>

                  </c:forEach>

                  <%--若在最后一页，则不可以点击下一页--%>
                  <c:if test="${repairState12PageVo.pageNow == repairState12PageVo.myPages || repairState12PageVo.list.size()==0}">
                    <li class="disabled">
                      <a href="JavaScript:void(0)">»</a>
                    </li>
                  </c:if>

                  <%--若不在最后一页，则可以点击下一页--%>
                  <c:if test="${repairState12PageVo.pageNow != repairState12PageVo.myPages}">
                    <li>
                      <a href="${pageContext.request.contextPath}/peopleSearch?peopleStyle=repairState2&searchIndex=${repairState12PageVo.style}&keyword=${repairState12PageVo.value}&pageNow=${repairState12PageVo.pageNow+1}&servicemanId=${serviceman.servicemanId}">»</a>
                    </li>
                  </c:if>

                </ul>
                <%-- 分页结束 --%>
       
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
<script type="text/javascript">
$(function(){
    $('.search-bar .dropdown-menu a').click(function() {
        var field = $(this).data('field') || '';
        $('#search-field').val(field);
        $('#search-btn').html($(this).text() + ' <span class="caret"></span>');
    });
});
</script>

</body>
</html>