<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.creating.www.beans.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="zh-CN" style="height: 100%;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/tools.css">
<link rel="stylesheet" href="/css/flat-ui.min.css">
<link rel="stylesheet" href="/css/app.css">
<style>
</style>
<title>网站主页</title>
</head>
<body class="golbal-background-color" style="height: 100%;">
	<header class="container">
		<div id="row">
				<div class="col-md-6">
					<a href="/app/" class="logo" target="_blank"> <img
						src="/images/logo.png" alt="国响" width="126" height="16">
					</a>
				</div>
				<div class="col-md-4 col-md-offset-2 header__nav">
					<a class="btn btn-block btn-lg btn-primary" style="width: 4em;margin-top:5px;float:left;"
						href="/app/login" target="_self">登&nbsp;录</a><a
						class="btn btn-block btn-lg btn-primary" style="width: 4em;float:left;margin-left:1em;"
						href="/app/register" data-toggle="modal" data-target="#signup">注&nbsp;册</a>
				</div>
			</div>
	</header>
	<div id="navbar" class="container">
		<div class="row">
			<div class="col">
				<nav class="navbar navbar-inverse navbar-embossed navbar-expand-lg"
					role="navigation">
					<a class="navbar-brand" href="#">Flat UI</a>
					<button type="button" class="navbar-toggler" data-toggle="collapse"
						data-target="#navbar-collapse-01"></button>
					<div class="collapse navbar-collapse" id="navbar-collapse-01">
						<ul class="nav navbar-nav mr-auto">
							<li><a href="#fakelink">Menu Item<span
									class="navbar-unread">1</span></a></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Messages</a> <span class="dropdown-arrow"></span>
								<ul class="dropdown-menu">
									<li><a href="#">Action</a></li>
									<li><a href="#">Another action</a></li>
									<li><a href="#">Something else here</a></li>
									<li class="divider"></li>
									<li><a href="#">Separated link</a></li>
								</ul></li>
							<li><a href="#fakelink">About Us</a></li>
						</ul>
						<form class="navbar-form form-inline my-2 my-lg-0" action="#"
							role="search">
							<div class="form-group">
								<div class="input-group">
									<input class="form-control" id="navbarInput-01" type="search"
										placeholder="Search"> <span class="input-group-btn">
										<button type="submit" class="btn">
											<span class="fui-search"></span>
										</button>
									</span>
								</div>
							</div>
						</form>
					</div>
					<!-- /.navbar-collapse -->
				</nav>
				<!-- /navbar -->
			</div>
		</div>
	</div>
	<nav class="container"></nav>
	<footer class="container"> </footer>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
		integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
		crossorigin="anonymous"></script>
	<script src="https://unpkg.com/popper.js@1.14.1/dist/umd/popper.min.js"
		crossorigin="anonymous"></script>
	<script src="/js/flat-ui.min.js"></script>
	<script src="/js/index.js"></script>
	<script src="/js/application.js"></script>
</body>
</html>