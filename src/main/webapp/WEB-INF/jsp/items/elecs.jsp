<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>电路条目表</title>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/tools.css">
<link rel="stylesheet" href="/css/flat-ui.min.css">
<link rel="stylesheet" href="/css/app.css">
</head>
<body>
<table class="table table-hover">
<tr class="title">
			<td>勾选</td>
			<td>电路ID/电路号</td>
			<td>电路类型</td>
			<td>电路层级类型</td>
			<td>服务层电路/ID</td>
			<td>客户层电路/ID</td>
			<td>正向路由路径</td>
			<td>反向路由路径</td>
</tr>
		<c:forEach var="elec" items="${elecs}">
<tr>
			<td><label class="checkbox" for="checkbox1">
            <input type="checkbox" value="" id="checkbox1" data-toggle="checkbox" class="custom-checkbox"><span class="icons"><span class="icon-unchecked"></span><span class="icon-checked"></span></span>
          </label></td>
			<td><c:out value="${elec.bussid}"/></td>	
			<td><c:out value="${elec.type}"/></td>
			<td><c:out value="${elec.layerType}"/></td>
			<td><c:out value="${elec.servers}"/></td>
			<td><c:out value="${elec.clients}"/></td>
			<td><c:out value="${elec.forwardPath}"/></td>
			<td><c:out value="${elec.reversePath}"/></td>
</tr>
</c:forEach>
</table>
<span><%@include file="/WEB-INF/jsp/page/pagebar.jsp" %></span>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
		integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
		crossorigin="anonymous"></script>
	<script src="https://unpkg.com/popper.js@1.14.1/dist/umd/popper.min.js"
		crossorigin="anonymous"></script>
	<script src="/js/flat-ui.min.js"></script>
	<script src="/js/application.js"></script>
</body>
</html>