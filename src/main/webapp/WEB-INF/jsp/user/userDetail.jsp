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
<title>用户详情</title>
<link href="<%=basePath%>static/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
</head>

<body>
	<script src="<%=basePath%>static/jQuery/jquery-2.1.4.min.js"></script>
	<script src="<%=basePath%>static/bootstrap/js/bootstrap.min.js"></script>
	<script src="<%=basePath%>static/js/common.js"></script>
	<script src="<%=basePath%>static/js/userDetail.js"></script>
	<jsp:include page="user.jsp" />
	<div class="form-group">
		<div>
			<button type="button" id="btnVerify" class="btn btn-primary">审核</button>
			<button type="button" id="btnStatus" class="btn btn-primary">停用</button>
			<button type="button" id="btnBack" onclick="window.history.go(-1);"
				class="btn btn-primary">返回</button>
		</div>
	</div>
</body>
</html>