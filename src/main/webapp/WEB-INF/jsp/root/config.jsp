<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>参数配置</title>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/tools.css">
<link rel="stylesheet" href="/css/flat-ui.min.css">
</head>
<body>
<table class="table table-hover">
<tr class="title">
			<td>勾选</td>
			<td>选项ID</td>
			<td>参数名</td>
			<td>参数值</td>
			<td>描述</td>
			<td>使用说明</td>
		</tr>
		<c:forEach var="_config_param" items="${configParams}" >
		<tr>
			<td><div class="checkbox">
					<label> <input type="checkbox" id="blankCheckbox"
						value="option1" aria-label="...">
					</label>
				</div></td>
		    <td>${_config_param.id}</td>
			<td>${_config_param.key}</td>
			<td>${_config_param.value}</td>
			<td>${_config_param.description}</td>
			<td>${_config_param.directionForUse}</td>
</tr>
</c:forEach>
</table>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="https://unpkg.com/popper.js@1.14.1/dist/umd/popper.min.js" crossorigin="anonymous"></script>
<script src="/js/flat-ui.min.js"></script>
</body>
</html>