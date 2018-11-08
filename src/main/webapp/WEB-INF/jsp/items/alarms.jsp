<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css">
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<link rel="stylesheet" href="../../../css/tools.css">
<title>告警条目表</title>
</head>
<body>
	<h2>告警条目表</h2>
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
			<td>详情</td>
			<td>操作</td>
		</tr>
		<c:forEach var="alarm" items="${alarms}">
				<tr>
			<td><div class="checkbox">
					<label> <input type="checkbox" id="blankCheckbox"
						value="option1" aria-label="...">
					</label>
				</div></td>
			<td><c:out value="${alarm.almID}"/></td>
			<td><c:out value="${alarm.mBussinessID}"/></td>
			<td><c:out value="${alarm.boardID}"/></td>
			<td><c:out value="${alarm.portName}"/></td>
			<td><c:out value="${alarm.alarmCode}"/></td>
			<td><c:out value="${alarm.firstCreateTime}"/></td>
			<td><c:out value="${alarm.clearTime}"/></td>
			<td><a href="<c:out value='${alarm.almID}'/>">详情</a></td>
			<td><button type="button" class="btn btn-danger">删除</button>  <button type="button" class="btn btn-warning">更新</button></td>
		</tr>
		</c:forEach>

	</table>
	<span><%@include file="/WEB-INF/jsp/page/pagebar.jsp"%></span>
</body>
</html>