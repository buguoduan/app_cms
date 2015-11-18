<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="zh-CN" ng-app="myApp">

<head lang="en">
    <meta charset="utf-8" name="viewport" content="width=device-width, initial-scale=1" />
    <title>bootstrap</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/my.css" />
    
    <script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/bootstrap.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/angular.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/app.js"></script>
	<script src="${pageContext.request.contextPath}/js/services.js"></script>
	<script src="${pageContext.request.contextPath}/js/controllers.js"></script>
	<script src="${pageContext.request.contextPath}/js/filters.js"></script>
	<script src="${pageContext.request.contextPath}/js/directives.js"></script>
	<script>
        $("#mytab a").click(function(e) {
            e.preventDefault;
            $(this).tab("show");
        })
    </script>
</head>

<body>
    <nav class="navbar navbar-inverse" role="navigation">
        <div>
            <div class="navbar-header">
                <a class="navbar-brand" href="/app_cms/hello/test1">view1</a>
            </div>
            <div class="collapse  navbar-collapse">
                <ul class="nav navbar-nav" id="mytab">
                    <li class="active"><a href="#/view2">wiew2</a></li>
                    <li><a href="#">订单</a></li>
                    <li><a href="#">营销</a></li>
                    <li><a href="#">数据</a></li>
                </ul>
                <form class="navbar-form navbar-left" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="搜索">
                    </div>
                    <button type="submit" class="btn btn-default">搜索</button>
                </form>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="">登录</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">用户名</a></li>
                            <li><a href="#">个人中心</a></li>
                            <li><a href="#">退出</a></li>
                        </ul>
                    </li>
                </ul>

            </div>
        </div>

    </nav>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-2">
                <ul id="main-nav" class="nav nav-tabs nav-stacked" style="">
                    <li class="active">
                        <a href="../index.jsp">
                            <i class="glyphicon glyphicon-th-large"></i> 首页
                        </a>
                    </li>
                    <li>
                        <a href="#taskSetting" class="nav-header collapsed" data-toggle="collapse">
                            <i class=" glyphicon glyphicon-bell"></i> 
                           &nbsp;内容管理
                            <span class="pull-right glyphicon glyphicon-chevron-down"></span>
                        </a>
                        <ul id="taskSetting" class="nav nav-list collapse secondmenu" style="height: 0px;">
                            <li><a href="#"><i class="glyphicon glyphicon-th-list"></i>栏目管理</a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-asterisk"></i>文章管理</a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-asterisk"></i>资源管理</a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-edit"></i>修改密码</a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-eye-open"></i>日志查看</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#systemSetting" class="nav-header collapsed" data-toggle="collapse">
                            <i class="glyphicon glyphicon-user"></i>  &nbsp;信息管理
                            <span class="pull-right glyphicon glyphicon-chevron-down"></span>
                        </a>
                         <ul id="systemSetting" class="nav nav-list collapse secondmenu" style="height: 0px;">
                            <li><a href="/app_cms/user/findUserManage"><i class="glyphicon glyphicon-user"></i>用户管理</a></li>
                            <li><a href="#"><i class="glyphicon glyphicon-edit"></i>修改密码</a></li>
                        </ul>
                    </li>

                    <li>
                        <a href="#">
                            <i class="glyphicon glyphicon-comment"></i> &nbsp;消息管理
                            <span class="label label-warning pull-right">5</span>
                        </a>
                    </li>

                    <li>
                        <a href="#">
                            <i class="glyphicon glyphicon-calendar"></i> 图表统计
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <i class="glyphicon glyphicon-fire"></i> 关于系统
                        </a>
                    </li>

                </ul>
            </div>
          
            <div class="col-md-10 " >
              	<form class="form-horizontal" action="updateUser" method="post">
	              	<div class="form-group">
	              		<div class="col-sm-2">
	                    <input type="hidden" class="form-control" name="id" value="${User.id}"/>
	                    </div>
	                </div>
					<div class="form-group">
					    <label for="inputName3" class="col-sm-1 control-label">登录名</label>
					    <div class="col-sm-2">
					      <input type="text" value="${User.name}" class="form-control" id="disabledInput" placeholder="name" disabled>
					    </div>
				    </div>
             		 <div class="form-group">
					    <label for="inputNike3" class="col-sm-1 control-label">昵称</label>
					    <div class="col-sm-2">
					      <input type="text" name="nike" value="${User.nike}" class="form-control" id="inputNike3" placeholder="Nike">
					    </div>
				     </div>
				      <div class="form-group">
					    <label for="inputDate3" class="col-sm-1 control-label">日期</label>
					    <div class="col-sm-3">
					      <input type="text"  value="<fmt:formatDate value="${User.date}" pattern="yyyy-M-d" />" class="form-control" id="disabledInput" placeholder="Date" disabled>
					    </div>
				     </div>
				     <button type="submit" class="btn btn-primary">Submit</button>
				</form>
            </div>
            
        </div>
    </div>



</body>

</html>
