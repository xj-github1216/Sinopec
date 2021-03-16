<%@ page import="com.igeek.entity.Employ" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<title>站点人员管理</title>
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
                <form class="pull-right search-bar" method="post" action="${pageContext.request.contextPath}/peopleSearch" role="form">
                  <div class="input-group">
                    <div class="input-group-btn">
                      <input type="hidden" name="peopleStyle" value="zhandian"/>
                      <input type="hidden" name="searchIndex" id="search-field" value="name">
                      <button class="btn btn-default dropdown-toggle" id="search-btn" data-toggle="dropdown" type="button" aria-haspopup="true" aria-expanded="false">
                      姓名 <span class="caret"></span>
                      </button>
                      <ul class="dropdown-menu">
                        <li><a tabindex="-1" href="javascript:void(0)" data-field="name">姓名</a> </li>
                        <li><a tabindex="-1" href="javascript:void(0)" data-field="id">员工Id</a> </li>
                        <li><a tabindex="-1" href="javascript:void(0)" data-field="username">用户名</a> </li>
                      </ul>
                    </div>
                    <input type="text" class="form-control" value="" name="keyword" placeholder="请输入查询条件" autocomplete="off">

                  </div>
                </form>


                <div class="toolbar-btn-action">
                  <a class="btn btn-primary m-r-5" href="zhandianRenyuanAdd.jsp"><i class="mdi mdi-plus"></i> 新增站点员工</a>
                  <a class="btn btn-danger" onclick="checkedValues()"><i class="mdi mdi-window-close"></i> 删除站点员工</a>

                </div>
              </div>
              <div class="card-body">
                
                <div class="table-responsive">
                  <table class="table table-bordered" style="text-align: center">
                    <thead>
                      <tr>
                        <th>
                          <label class="lyear-checkbox checkbox-primary">
                            <input type="checkbox" id="check-all"><span></span>
                          </label>
                        </th>
                        <th style="text-align: center">员工Id</th>
                        <th style="text-align: center">姓名</th>
                        <th style="text-align: center">用户名</th>
                        <th style="text-align: center">电话</th>
                        <th style="text-align: center">身份证</th>
                        <th style="text-align: center">站点Id</th>
                        <th style="text-align: center">家庭住址</th>
                        <th style="text-align: center">入职日期</th>
                        <th style="text-align: center">操作</th>
                      </tr>
                    </thead>
                    <tbody>


                    <c:forEach items="${voEmploy.list}" var="employ">
                      <tr>
                        <td>
                          <label class="lyear-checkbox checkbox-primary">
                            <input type="checkbox" id="ids" name="ids" value="${employ.employId}"><span></span>
                          </label>
                        </td>
                        <td>${employ.employId}</td>
                        <td>${employ.name}</td>
                        <td>${employ.username}</td>
                        <td>${employ.phone}</td>
                        <td>${employ.personId}</td>
                        <td>${employ.stationId}</td>
                        <td>${employ.address}</td>
                        <td>${employ.entryDate}</td>
                        <td>
                          <div class="btn-group">
                              <%--编辑操作--%>
                            <a class="btn btn-xs btn-default" data-toggle="modal" data-target="#${employ.employId}" data-whatever="@mdo" title="编辑"><i class="mdi mdi-pencil"></i></a>
                            <div class="modal fade" id="${employ.employId}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" style="margin-top: 150px">
                              <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                  <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" id="exampleModalLabel">编辑</h4>
                                  </div>
                                  <div class="modal-body">
                                    <form method="post" action="${pageContext.request.contextPath}/edit?style=employ&id=${employ.employId}" >
                                      <table style="text-align: center;" align="center">
                                        <tr>
                                          <td><label  class="control-label">员工id</label></td>
                                          <td><input type="text" name="id" class="form-control" value="${employ.employId}" disabled="disabled"></td>
                                          <td><label class="control-label">姓名</label></td>
                                          <td><input type="text" name="name" class="form-control" value="${employ.name}" disabled="disabled"></td>
                                        </tr>
                                        <tr>
                                          <td><label class="control-label">身份证</label></td>
                                          <td><input type="text" name="personId" class="form-control" value="${employ.personId}" disabled="disabled"></td>
                                          <td><label class="control-label">入职日期</label></td>
                                          <td><input type="text" name="entryDate" class="form-control" value="${employ.entryDate}" disabled="disabled"></td>
                                        </tr>
                                        <tr>
                                          <td><label class="control-label">用户名</label></td>
                                          <td><input type="text" name="username" class="form-control" value="${employ.username}"></td>
                                          <td><label class="control-label">电话</label></td>
                                          <td><input type="text" name="phone" class="form-control" value="${employ.phone}"></td>
                                        </tr>
                                        <tr>
                                          <td><label class="control-label">站点id</label></td>
                                          <td><select name="stationId">
                                            <option value="${employ.employId}">请选择站点公司编号</option>
                                            <c:forEach items="${stationList}" var="station">
                                              <option value="${station.stationId}">${station.stationId}</option>
                                            </c:forEach>
                                          </select></td>
                                          <td><label class="control-label">家庭住址</label></td>
                                          <td><input type="text" name="address" class="form-control" value="${employ.address}"></td>
                                        </tr>
                                      </table>

                                      <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                        <button type="submit" class="btn btn-primary" >确定</button>
                                      </div>

                                    </form>
                                  </div>

                                </div>
                              </div>
                            </div>
                            <%--编辑结束--%>

                            <%--删除操作--%>
                            <a class="btn btn-xs btn-default" href="${pageContext.request.contextPath}/delete?style=single&deleteStyle=employ&id=${employ.employId}" title="删除" data-toggle="tooltip"><i class="mdi mdi-window-close"></i></a>
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
                  <c:if test="${voEmploy.pageNow == 1}">
                    <li class="disabled">
                      <a href="JavaScript:void(0)"><span>«</span></a>
                    </li>
                  </c:if>

                  <%-- 若不在第一页，则可以点击上一页 --%>
                  <c:if test="${voEmploy.pageNow != 1}">
                    <li>
                      <a href="${pageContext.request.contextPath}/peopleSearch?peopleStyle=zhandian&searchIndex=${voEmploy.style}&keyword=${voEmploy.value}&pageNow=${voEmploy.pageNow-1}">«</a>
                    </li>
                  </c:if>

                  <%-- 中间页迭代 --%>
                  <c:forEach begin="1" end="${voEmploy.myPages}" var="page">

                    <%--若当前页pageNow正好是page，则显示被点击的状态--%>
                    <c:if test="${voEmploy.pageNow == page}">
                      <li class="active">
                        <a href="JavaScript:void(0)">${page}</a>
                      </li>
                    </c:if>

                    <%--若当前页pageNow不是page，则显示可以点击的状态--%>
                    <c:if test="${voEmploy.pageNow != page}">
                      <li><a href="${pageContext.request.contextPath}/peopleSearch?peopleStyle=zhandian&searchIndex=${voEmploy.style}&keyword=${voEmploy.value}&pageNow=${page}">${page}</a></li>
                    </c:if>

                  </c:forEach>

                  <%--若在最后一页，则不可以点击下一页--%>
                  <c:if test="${voEmploy.pageNow == voEmploy.myPages}">
                    <li class="disabled">
                      <a href="JavaScript:void(0)">»</a>
                    </li>
                  </c:if>

                  <%--若不在最后一页，则可以点击下一页--%>
                  <c:if test="${voEmploy.pageNow != voEmploy.myPages}">
                    <li>
                      <a href="${pageContext.request.contextPath}/peopleSearch?peopleStyle=zhandian&searchIndex=${voEmploy.style}&keyword=${voEmploy.value}&pageNow=${voEmploy.pageNow+1}">»</a>
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

<script type="text/javascript">
  function checkedValues(){
    var arr=[];
    var checkbox=document.getElementsByName("ids");
    for(var i=0;i<checkbox.length;i++){
      if(checkbox[i].checked===true){
        arr.push(checkbox[i].value);
      }
    }
    window.location.href="${pageContext.request.contextPath}/delete?style=multiple&deleteStyle=employ&ids="+arr;
  }
</script>
</body>
</html>