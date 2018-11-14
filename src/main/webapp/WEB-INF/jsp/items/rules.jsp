<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>规则条目表</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/tools.css">
<link rel="stylesheet" href="/css/flat-ui.min.css">
</head>
<body>
<table class="table table-hover">
<tr class="title">
			<td>勾选</td>
			<td>ID</td>
			<td>根告警代码</td>
			<td>衍生告警代码</td>
			<td>根层次</td>
			<td>衍生层次</td>
			<td>详情</td>
			<td>操作</td>
		</tr>
		<c:forEach var="rule" items="${rules}">
		<tr>
			<td><div class="checkbox">
					<label> <input type="checkbox" id="blankCheckbox"
						value="option1" aria-label="...">
					</label>
				</div></td>
			<td><c:out value="${rule.ruleID}"/></td>
			<td><c:out value="${rule.srcCode}"/></td>
			<td><c:out value="${rule.dscCode}"/></td>
			<td><c:out value="${rule.srcLayerLevel}"/></td>
			<td><c:out value="${rule.dscLayerLevel}"/></td>
			<td>详情</td>
			<td><button type="button" class="btn btn-danger">删除</button>  <button type="button" class="btn btn-warning">更新</button></td>
		</tr>
		</c:forEach>
</table>
<span><%@include file="/WEB-INF/jsp/page/pagebar.jsp" %></span>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="https://unpkg.com/popper.js@1.14.1/dist/umd/popper.min.js" crossorigin="anonymous"></script>
<script src="/js/flat-ui.min.js"></script>
<script src="/js/backstage/left.js"></script>
</body>
</html>