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
<title>用户列表</title>
<link href="<%=basePath%>static/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="<%=basePath%>static/bootstrap/css/bootstrap-table.css"
	rel="stylesheet">
<style type="text/css">
#queryDiv {
	margin-right: auto;
	margin-left: auto;
	width: 100%;
	margin-top: 50px;
	margin-bottom: 20px;
}

#queryButton {
	margin-right: 20px;
	float: right;
}

#textInput {
	margin-top: 10px;
	margin-left: 10px;
}

#tableResult {
	margin-right: auto;
	margin-left: auto;
	width: 100%;
}

#bottomTab {
	margin-right: 20px;
	float: right;
}
</style>
</head>
<body>
	<div id="queryDiv">
		<table width="100%">
			<tr>
				<td>手机号：</td>
				<td><input type="text" id="userList_queryPhone" value=""></td>
				<td>状态：</td>
				<td><select id="userList_queryStatus">
				</select></td>
				<td>
					<button id="queryButton" class="btn btn-primary" type="button">查询</button>
				</td>
				<td>
					<button id="resetButton" class="btn btn-primary" type="button">清空</button>
				</td>
			</tr>
		</table>
	</div>
	<input type="hidden" id="contextPath" value="${contextPath}" />
	<div class="container-fluid">
		<div id="toolbar" class="btn-group">
			<button id="btn_add" type="button" class="btn btn-default">
				<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
			</button>
		</div>
		<table id="table_userList"></table>
	</div>
	<script src="<%=basePath%>static/jQuery/jquery-2.1.4.min.js"></script>
	<script src="<%=basePath%>static/bootstrap/js/bootstrap.min.js"></script>
	<script src="<%=basePath%>static/bootstrap/js/bootstrap-table.js"></script>
	<script src="<%=basePath%>static/bootstrap/js/bootstrap-table-zh-CN.js"></script>
	<script src="<%=basePath%>static/js/common.js"></script>
	<script src="<%=basePath%>static/js/userList.js"></script>

</body>
</html>