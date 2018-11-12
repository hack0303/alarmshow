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
<title>告警处理结果</title>
</head>
<body>
<h1>final结果</h1>
	<h2>告警处理结果</h2>
	<table class="table table-hover">
		<tr class="title">
			<td></td>
			<td>ID</td>
			<td>告警号</td>
			<td>组头</td>
			<td>是否返回</td>
			<td>是否是组</td>
			<td>返回类型</td>
			<td>详情</td>
			<td>操作</td>
		</tr>
    <c:forEach var="result" items="${results}">
    <tr>
			<td><div class="checkbox">
					<label> <input type="checkbox" id="blankCheckbox"
						value="option1" aria-label="...">
					</label>
				</div></td>
			<td>${result.id}</td>
			<td>${result.almBean.almID}</td>
			<td>${result.header.almID}</td>
			<td>${result.isReturned}</td>
			<td>${result.isGroup}</td>
			<td>${result.returnType}</td>
			<td>详情</td>
			<td>操作</td>
		</tr>
    </c:forEach>
	</table>
	<span><%@include file="/WEB-INF/jsp/page/pagebar.jsp"%></span>
</body>
</html>