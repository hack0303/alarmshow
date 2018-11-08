<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>规则条目表</title>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css">
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<link rel="stylesheet" href="../../../css/tools.css">
</head>
<body>
<h2>规则条目表</h2>
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
<tr>
			<td><div class="checkbox">
					<label> <input type="checkbox" id="blankCheckbox"
						value="option1" aria-label="...">
					</label>
				</div></td>
			<td>ID</td>
			<td>根告警代码</td>
			<td>衍生告警代码</td>
			<td>根层次</td>
			<td>衍生层次</td>
			<td>详情</td>
			<td><button type="button" class="btn btn-danger">删除</button>  <button type="button" class="btn btn-warning">更新</button></td>
		</tr>
</table>
<span><%@include file="/WEB-INF/jsp/page/pagebar.jsp" %></span>
</body>
</html>