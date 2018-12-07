<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>告警条目表</title>
</head>
<body>
	<div class="container-fluid" style="margin-top: 10px;">
		<div class="row">
			<div class="col-md-2 col-md-offset-8">
				<a href="#" class="btn btn-md btn-block btn-primary">刷新</a>
			</div>
			<div class="col-md-2">
				<a href="#" class="btn btn-md btn-block btn-primary">创建告警</a>
			</div>
		</div>
	</div>
	<div class="container-fluid" style="margin-top:10px;">
		<div class="row">
			<div class="col-md-3">
				<ul class="nav nav-tabs nav-append-content">
					<li><a href="#tab4">告警编号</a></li>
					<li class="active"><a href="#tab5">创建时间</a></li>
					<li class="dropdown"><a class="dropdown-toggle"
						data-toggle="dropdown" href="#" aria-expanded="false"> </a>
						<ul class="dropdown-menu" x-placement="bottom-start"
							style="position: absolute; transform: translate3d(0px, 25px, 0px); top: 0px; left: 0px; will-change: transform;">
							<li><a href="#tab5" class="show">告警编号</a></li>
							<li><a href="#tab6" class="show active">创建时间</a></li>
						</ul></li>
				</ul>
			</div>
			<div class="col-md-7">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-7">
							<div class="form-group">
								<input type="text" value="" placeholder="告警编码"
									class="form-control">
							</div>
						</div>
						<div class="col-md-3">
							<a href="#" class="btn btn-md btn-block btn-primary">搜&nbsp;索</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container-fluid">
			<div class="row">
				<table class="table table-hover">
					<tr class="title">
						<td></td>
						<td>#</td>
						<td>业务号</td>
						<td>盘号</td>
						<td>端口号</td>
						<td>告警码</td>
						<td>网管接收时间</td>
						<td>告警清除时间</td>
					</tr>
					<c:forEach var="alarm" items="${alarms}">
						<c:if test='${alarm.almID ne 0}'>
							<tr>
								<td><label class="checkbox checked" for="checkbox1">
										<input type="checkbox" value="" id="checkbox1"
										data-toggle="checkbox" class="custom-checkbox"><span
										class="icons"><span class="icon-unchecked"></span><span
											class="icon-checked"></span></span>
								</label></td>
								<td><c:out value="${alarm.almID}" /></td>
								<td><c:out value="${alarm.mBussinessID}" /></td>
								<td><c:out value="${alarm.boardID}" /></td>
								<td><c:out value="${alarm.portName}" /></td>
								<td><c:out value="${alarm.alarmCode}" /></td>
								<td><fmt:formatDate value="${alarm.firstCreateTime}" pattern="yyyy/MM/dd HH:mm:ss"/></td>
								<td><fmt:formatDate value="${alarm.clearTime}" pattern="yyyy/MM/dd HH:mm:ss"/></td>
							</tr>
						</c:if>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>
	<span><%@include file="/WEB-INF/jsp/page/pagebar.jsp"%></span>
</body>
</html>