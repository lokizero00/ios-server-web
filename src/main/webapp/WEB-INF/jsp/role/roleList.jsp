<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = "//" + request.getHeader("host") + path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="<%=basePath%>"></c:set>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>角色列表</title>
<link href="images/favicon.png" rel="icon" />
<link href="<%=basePath%>static/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=basePath%>static/bootstrap/css/bootstrap-table.css" rel="stylesheet">
<link href="<%=basePath%>static/bootstrap/css/bootstrap-datetimepicker.css" rel="stylesheet">
<link href="<%=basePath%>static/bootstrap/css/style.css" rel="stylesheet">
<link href="<%=basePath%>static/css/toastr.min.css" rel="stylesheet" />
</head>
<body>
<div class="panel panel-default">
	    <div class="panel-heading" >
	       	<h3 class="panel-title"><span class="glyphicon glyphicon-book"></span>角色管理</h3>
	    </div>
	    <div class="panel-body">
	       	 <table class="tbInfo">
				<tr>
					<td>角色名称：</td>
					<td>
						<input type="text" id="name" name="name" value="">
					</td>
				</tr>
				<tr>
					<td colspan="4" align="right">
						<button id="queryButton" class="btn btn-primary" type="button">查 询</button>
						<button id="resetButton" class="btn btn-default" type="button">清 空</button>
					</td>
				</tr>
			</table>
			
	    </div>
	</div>
	<div class="panel panel-default">
	    <div class="panel-heading" >
	       	<span class="glyphicon glyphicon-list-alt"></span> 角色列表
	    </div>
	    <div class="panel-body" style="padding-top: 1px;">
	       	 <input type="hidden" id="contextPath" value="${contextPath}" />
	       	 <div id="toolbar" class="btn-group">
				<button id="btn_add" type="button" class="btn btn-primary">
					<span class="glyphicon glyphicon-plus"></span>新增
				</button>
			</div>
			<table id="table_roleList" class="tb_list"></table>
	    </div>
	</div>
	
	<script src="<%=basePath%>static/jQuery/jquery-2.1.4.min.js"></script>
	<script src="<%=basePath%>static/bootstrap/js/bootstrap.min.js"></script>
	<script src="<%=basePath%>static/bootstrap/js/bootstrap-table.js"></script>
	<script src="<%=basePath%>static/bootstrap/js/bootstrap-table-zh-CN.js"></script>
	<script src="<%=basePath%>static/bootstrap/js/bootstrap-datetimepicker.js"></script>
	<script src="<%=basePath%>static/bootstrap/js/bootstrap-datetimepicker.zh-CN.js"></script>
	<script src="<%=basePath%>static/bootstrap/js/ewin.js"></script>
	<script src="<%=basePath%>static/js/common.js"></script>
		<script src="<%=basePath%>static/bootstrap/js/toastr.min.js"></script>
	<script type="text/javascript">
         toastr.options.positionClass = 'toast-center-center';
 	</script>
	<script src="<%=basePath%>static/js/roleList.js"></script>
</body>
</html>