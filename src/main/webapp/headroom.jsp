<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/tools.css">
<link rel="stylesheet" href="/css/flat-ui.min.css">
<link rel="stylesheet" href="/css/app.css">
<link rel="stylesheet" href="/css/headroom.css">
</head>
<body>
<header class="headroom" style="width:100%;background:black;height:100px;position:fixed;z-index:10px;">

hehehe
</header>

<div id="nav" style="background:red;height:2000px;">
asdasd<br>
asdasd<br>
asdasd<br>
asdasd<br>
asdasd<br>
asdasd<br>
</div>


	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
		integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
		crossorigin="anonymous"></script>
	<script src="https://unpkg.com/popper.js@1.14.1/dist/umd/popper.min.js"
		crossorigin="anonymous"></script>
	<script src="/js/flat-ui.min.js"></script>
	<script src="/js/application.js"></script>
	<script src="/js/index.js"></script>
	<script type="text/javascript" src="/js/headroom.js"></script>
	<script type="text/javascript" src="/js/jQuery.headroom.js"></script>
	<script>
	$("header").headroom({
		  "offset": 205,
		  "tolerance": 5,
		  "classes": {
		    "initial": "animated",
		    "pinned": "slideDown",
		    "unpinned": "slideUp"
		  }
		});

		// to destroy
		$("#header").headroom("destroy");
	</script>
</body>
</html>