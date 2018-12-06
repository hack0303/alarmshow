<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container" style="margin-top:1em;">
		<div class="row">
			<div class="col-md-2">告警数据</div>
			<form method="post" action="/app/upload/alarmsdata"
				enctype="multipart/form-data">
				<div class="col-md-4">
					<input type="file" name="file">
				</div>
				<div class="col-md-1">
					<input type="submit" value="提交">
				</div>
			</form>
		</div>
	</div>
	<div class="container" style="margin-top:1em;">
		<div class="row">
			<div class="col-md-2">规则数据</div>
			<form method="post" action="/app/upload/rulesdata"
				enctype="multipart/form-data">
				<div class="col-md-4">
					<input type="file" name="file">
				</div>
				<div class="col-md-1">
					<input type="submit" value="提交">
				</div>
			</form>
		</div>
	</div>
	<div class="container" style="margin-top:5em;">
	<div class="row">
		<div class="col">
			<div class="progress">
				<div class="progress-bar" style="width: 0%;"></div>
			</div>
		</div>
		<div id="process_description" class="col text-center">
			<p>
				正在完成...<span>,急毛</span>
			</p>
		</div>
	</div>
	</div>
</body>
<script src="/js/results/process.js"></script>
</html>