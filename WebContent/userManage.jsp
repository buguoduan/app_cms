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
                            <li><a href="#"><i class="glyphicon glyphicon-user"></i>用户管理</a></li>
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
          
            <div class="col-md-10" >
               <div class="row">
							<!-- 输入框 -->
					  <div class="col-lg-6 col-center-block">
					    <div class="input-group">
					      <input type="text" class="form-control" placeholder="Search for...">
					      <span class="input-group-btn">
					        <button class="btn btn-default" type="button">Go!</button>
					      </span>
					    </div><!-- /input-group -->
					  </div><!-- /.col-lg-6 -->
					</div><!-- /.row -->
					
             					 <table class="table table-striped">
									   <tr>
				                            <th class="th_select_all">
				                                <input type="checkbox" onclick="selectAdmins(this);" />
				                                <span>全选</span>
				                            </th>
						                      	<th class="width70">用户ID</th>
												<th class="width70">登录名</th>
												<th>昵称</th>
												<th>授权日期</th>
												<th>状态</th>
				                        </tr> 
                        <c:forEach items="${Users}" var="u">
						<tr>
							<td><input type="checkbox" name="check_user" /></td>
							<td>${u.id}</td>
							<td>${u.name}</td>
							<td>${u.nike}</td>
							<td><fmt:formatDate value="${u.date}"
									pattern="yyyy-MM-dd" /></td>
							<td class="td_modi">
                                <input type="button" value="修改" class="btn_modify" onclick="modify_user(${u.id});"  />
                                <input type="button" value="删除" class="btn_delete" />
                            </td>
						</tr>
						</c:forEach>
				                 
								</table>
								 <!--分页-->
                <nav class="text-center">
				  <ul class="pagination">
				    <li>
				      <a href="#" aria-label="Previous">
				        <span aria-hidden="true">&laquo;</span>
				      </a>
				    </li>
				    <li><a href="#">1</a></li>
				    <li><a href="#">2</a></li>
				    <li><a href="#">3</a></li>
				    <li><a href="#">4</a></li>
				    <li><a href="#">5</a></li>
				    <li>
				      <a href="#" aria-label="Next">
				        <span aria-hidden="true">&raquo;</span>
				      </a>
				    </li>
				  </ul>
				</nav>
            </div>
            
        </div>
    </div>

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
        
        	//开通
		function modify_user(id) {
				location.href = "findModifyUser?id=" + id;
		}
	        
    </script>

</body>

</html>
