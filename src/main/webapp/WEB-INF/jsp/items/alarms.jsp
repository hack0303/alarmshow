<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>告警条目表</title>
</head>
<body>
<div class="container-fluid">
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
<div class="container-fluid">
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
		</tr>
		</c:forEach>

	</table>
	</div>
	</div>
	<span><%@include file="/WEB-INF/jsp/page/pagebar.jsp"%></span>
</body>
</html>