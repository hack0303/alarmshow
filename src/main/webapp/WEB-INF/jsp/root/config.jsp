<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>参数配置</title>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css">
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<link rel="stylesheet" href="../../../css/tools.css">
</head>
<body>
<h2>配置参数</h2>
<table class="table table-hover">
<tr class="title">
			<td>勾选</td>
			<td>选项ID</td>
			<td>参数名</td>
			<td>参数值</td>
			<td>描述</td>
			<td>使用说明</td>
			<td>详情</td>
			<td>操作</td>
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
			<td>详情</td>
		    <td><button type="button" class="btn btn-danger">删除</button>  <button type="button" class="btn btn-warning">更新</button></td>	
</tr>
</c:forEach>
</table>
</body>
</html>