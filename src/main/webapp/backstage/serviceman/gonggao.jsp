<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" />
<title>公告信息管理</title>
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
                <form class="pull-right search-bar" method="post" action="${pageContext.request.contextPath}/peopleSearch?people=serviceman" role="form">
                  <div class="input-group">
                    <div class="input-group-btn">
                      <input type="hidden" name="peopleStyle" value="notice"/>
                      <input type="hidden" name="searchIndex" id="search-field" value="title">
                      <button class="btn btn-default dropdown-toggle" id="search-btn" data-toggle="dropdown" type="button" aria-haspopup="true" aria-expanded="false">
                      标题 <span class="caret"></span>
                      </button>
                      <ul class="dropdown-menu">
                        <li> <a tabindex="-1" href="javascript:void(0)" data-field="title">标题</a> </li>
                        <li> <a tabindex="-1" href="javascript:void(0)" data-field="id">id</a> </li>
                        <li> <a tabindex="-1" href="javascript:void(0)" data-field="releaseDate">发布时间</a> </li>
                      </ul>
                    </div>
                    <input type="text" class="form-control" name="keyword" placeholder="请输入查询内容" autocomplete="off">
                  </div>
                </form>
              </div>
              <div class="card-body">
                
                <div class="table-responsive">
                  <table class="table table-bordered" style="text-align: center">
                    <thead>
                      <tr class="btn-secondary">
                        <th>
                          <label class="lyear-checkbox checkbox-primary">
                            <input type="checkbox" id="check-all"><span></span>
                          </label>
                        </th>
                        <th style="text-align: center">id</th>
                        <th style="text-align: center">标题</th>
                        <th style="text-align: center">内容</th>
                        <th style="text-align: center">发布时间</th>
                        <th style="text-align: center">相关附件</th>
                        <th style="text-align: center">操作</th>
                      </tr>
                    </thead>
                    <tbody>

                    <% int i=1; %>
                    <c:forEach items="${noticePageVo.list}" var="notice">
                      <tr>
                        <td>
                          <label class="lyear-checkbox checkbox-primary">
                            <input type="checkbox" name="ids" value="${notice.id}"><span></span>
                          </label>
                        </td>
                        <td>${notice.id}</td>
                        <td>${notice.title}</td>
                        <td>${notice.content}</td>
                        <td>${notice.releaseDate}</td>
                        <c:if test="${notice.file!=null}">
                          <td><a href="${notice.file}">下载文件</a></td>
                        </c:if>
                        <c:if test="${notice.file==null}">
                          <td>无</td>
                        </c:if>
                        <td>
                          <div class="btn-group">

                              <%--编辑操作--%>
                            <button class="btn btn-xs btn-label btn-info" data-toggle="modal" data-target="#${notice.id}" data-whatever="@mdo"><label><i class="mdi mdi-eye"></i></label>查看</button>
                            <div class="modal fade" id="${notice.id}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" style="margin-top: 150px">
                              <div class="modal-dialog" role="document">
                                <div class="modal-content">
                                  <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                    <h4 class="modal-title" id="exampleModalLabel">查看</h4>
                                  </div>
                                  <div class="modal-body">
                                    <form method="post" action="${pageContext.request.contextPath}/edit?style=notice&id=${notice.id}&people=admin" >
                                      <table style="text-align: center;" align="center">
                                        <tr>
                                          <td><label  class="control-label">公告id</label></td>
                                          <td><input type="text" name="id" class="form-control" value="${notice.id}" disabled="disabled"></td>
                                        </tr>
                                        <tr>
                                          <td><label class="control-label">发布时间</label></td>
                                          <td><input type="text" name="releaseDate" class="form-control" value="${notice.releaseDate}" disabled="disabled"></td>
                                        </tr>
                                        <tr>
                                          <td><label class="control-label">公告标题</label></td>
                                          <td><input type="text" name="title" class="form-control" value="${notice.title}" disabled="disabled" ></td>
                                        </tr>
                                        <tr>
                                          <td><label  class="control-label">公告内容</label></td>
                                          <td><input type="text" name="content" class="form-control" value="${notice.content}" disabled="disabled"></td>
                                        </tr>

                                      </table>

                                      <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                                      </div>

                                    </form>
                                  </div>

                                </div>
                              </div>
                            </div>
                              <%--编辑结束--%>

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
                  <c:if test="${noticePageVo.pageNow == 1}">
                    <li class="disabled">
                      <a href="JavaScript:void(0)">«</a>
                    </li>
                  </c:if>

                  <%-- 若不在第一页，则可以点击上一页 --%>
                  <c:if test="${noticePageVo.pageNow != 1}">
                    <li>
                      <a href="${pageContext.request.contextPath}/peopleSearch?peopleStyle=notice&searchIndex=${noticePageVo.style}&keyword=${noticePageVo.value}&pageNow=${noticePageVo.pageNow-1}&people=serviceman">«</a>
                    </li>
                  </c:if>

                  <%-- 中间页迭代 --%>
                  <c:forEach begin="1" end="${noticePageVo.myPages}" var="page">

                    <%--若当前页pageNow正好是page，则显示被点击的状态--%>
                    <c:if test="${noticePageVo.pageNow == page}">
                      <li class="active">
                        <a href="JavaScript:void(0)">${page}</a>
                      </li>
                    </c:if>

                    <%--若当前页pageNow不是page，则显示可以点击的状态--%>
                    <c:if test="${noticePageVo.pageNow != page}">
                      <li><a href="${pageContext.request.contextPath}/peopleSearch?peopleStyle=notice&searchIndex=${noticePageVo.style}&keyword=${noticePageVo.value}&pageNow=${page}&people=serviceman">${page}</a></li>
                    </c:if>

                  </c:forEach>

                  <%--若在最后一页，则不可以点击下一页--%>
                  <c:if test="${noticePageVo.pageNow == noticePageVo.myPages || noticePageVo.list.size()==0}">
                    <li class="disabled">
                      <a href="JavaScript:void(0)">»</a>
                    </li>
                  </c:if>

                  <%--若不在最后一页，则可以点击下一页--%>
                  <c:if test="${noticePageVo.pageNow != noticePageVo.myPages && noticePageVo.list.size()!=0}">
                    <li>
                      <a href="${pageContext.request.contextPath}/peopleSearch?peopleStyle=notice&searchIndex=${noticePageVo.style}&keyword=${noticePageVo.value}&pageNow=${noticePageVo.pageNow+1}&people=serviceman">»</a>
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
    window.location.href="${pageContext.request.contextPath}/delete?style=multiple&deleteStyle=notice&ids="+arr;
  }
</script>
</body>
</html>