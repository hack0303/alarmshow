<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>参数配置</title>
</head>
<body>
<table class="table table-hover">
<tr class="title">
			<td></td>
			<td>#</td>
			<td>参数名</td>
			<td>参数值</td>
			<td>描述</td>
			<td>使用说明</td>
		</tr>
		<c:forEach var="_config_param" items="${configParams}" >
		<tr>
			<td><label class="checkbox" for="checkbox1">
            <input type="checkbox" value="" id="checkbox1" data-toggle="checkbox" class="custom-checkbox"><span class="icons"><span class="icon-unchecked"></span><span class="icon-checked"></span></span>
          </label></td>
		    <td>${_config_param.id}</td>
			<td>${_config_param.key}</td>
			<td>${_config_param.value}</td>
			<td>${_config_param.description}</td>
			<td>${_config_param.directionForUse}</td>
</tr>
</c:forEach>
</table>
</body>
</html>