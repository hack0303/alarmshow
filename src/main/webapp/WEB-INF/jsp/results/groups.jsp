<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/tools.css">
<link rel="stylesheet" href="/css/flat-ui.min.css">
<link rel="stylesheet" href="/css/app.css">
<title>组结果展示</title>
</head>
<body>
	<table class="table table-hover">
		<tr class="title">
			<td></td>
			<td>ID</td>
			<td>组号(默认使用根ID)</td>
			<td>成员</td>
			<td>详情</td>
			<td>操作</td>
		</tr>
		<c:forEach var="agroup" items="${results}">
	<tr>
			<td><label class="checkbox" for="checkbox1">
            <input type="checkbox" value="" id="checkbox1" data-toggle="checkbox" class="custom-checkbox"><span class="icons"><span class="icon-unchecked"></span><span class="icon-checked"></span></span>
          </label></td>
			<td>${agroup.id}</td>
			<td>${agroup.groupHeader.almID}</td>
			<td>${agroup.memberids}</td>
			<td>详情</td>
			<td>操作</td>
		</tr>
	</c:forEach>

	</table>
	<span><%@include file="/WEB-INF/jsp/page/pagebar.jsp"%></span>
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