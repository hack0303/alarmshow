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
<title>告警条目表</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-md-2 col-md-offset-6">
刷新
</div>
<div class="col-md-4">
创建告警
</div>
</div>
<div class="row">
<div class="col-md-1">分项001</div>
<div class="col-md-1">分项002</div>
</div>
</div>
<div class="container">
<div class="row">
<div class="col-md-2">
选择类型
</div>
<div class="col-md-2">
<input type="text">
</div>
<div class="col-md-2">
<input type="button" value="search">
</div>
</div>
<div class="row">

	<table class="table table-hover">
		<tr class="title">
			<td></td>
			<td>ID</td>
			<td>业务号</td>
			<td>盘号</td>
			<td>端口号</td>
			<td>告警码</td>
			<td>告警第一次发生时间</td>
			<td>告警清除时间</td>
			<td>操作</td>
		</tr>
		<c:forEach var="alarm" items="${alarms}">
				<tr>
			<td><label class="checkbox" for="checkbox1">
            <input type="checkbox" value="" id="checkbox1" data-toggle="checkbox" class="custom-checkbox"><span class="icons"><span class="icon-unchecked"></span><span class="icon-checked"></span></span>
          </label></td>
			<td><c:out value="${alarm.almID}"/></td>
			<td><c:out value="${alarm.mBussinessID}"/></td>
			<td><c:out value="${alarm.boardID}"/></td>
			<td><c:out value="${alarm.portName}"/></td>
			<td><c:out value="${alarm.alarmCode}"/></td>
			<td><c:out value="${alarm.firstCreateTime}"/></td>
			<td><c:out value="${alarm.clearTime}"/></td>
			<td><input type="button" value="删除"></td>
		</tr>
		</c:forEach>

	</table>
	</div>
	</div>
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