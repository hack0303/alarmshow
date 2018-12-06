<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>规则条目表</title>
</head>
<body>
<table class="table table-hover">
<tr class="title">
			<td></td>
			<td>#</td>
			<td>根告警代码</td>
			<td>衍生告警代码</td>
			<td>根层次</td>
			<td>衍生层次</td>
		</tr>
		<c:forEach var="rule" items="${rules}">
		<tr>
			<td><label class="checkbox" for="checkbox1">
            <input type="checkbox" value="" id="checkbox1" data-toggle="checkbox" class="custom-checkbox"><span class="icons"><span class="icon-unchecked"></span><span class="icon-checked"></span></span>
          </label></td>
			<td><c:out value="${rule.ruleID}"/></td>
			<td><c:out value="${rule.srcCode}"/></td>
			<td><c:out value="${rule.dscCode}"/></td>
			<td><c:out value="${rule.srcLayerLevel}"/></td>
			<td><c:out value="${rule.dscLayerLevel}"/></td>
		</tr>
		</c:forEach>
</table>
<span><%@include file="/WEB-INF/jsp/page/pagebar.jsp" %></span>
</body>
</html>