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
<body class="golbal-background-color">
	<div class="container" style="background:url('/images/hero.png');">
		<div id="top-a" class="row">
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
		</div>
			<div class="container" style="background:url('/images/hero.png');">
		<div id="top-a" class="row">
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
		</div>
		<div id="top-b" class="row" style="height:800px;" >
		<p class="text-center">平台建设施工中...</p>
		<p class="text-center">更多功能请点击下方</p>
			<div id="enterpoint" class="col-md-6 col-md-offset-3 border"><a class="btn btn-block btn-lg btn-primary" href="/app/">进入功能分区</a></div>
	</div>
	</div>
	<div class="container" id="realtime_process">
		<div id="nav" class="row border">
			<div class="col-md-12">
				<h3 class="text-center">实时处理</h3>
			</div>
			<div class="col-md-5 border"
				style="height: 200px; background: #edeff1; border-radius: 10px;">
				<p>...</p>
				<p>...</p>
				<p>...</p>
				<p>...</p>
				<p>...</p>
			</div>
			<div class="col-md-6 col-md-offset-1 border"
				style="height: 200px; background: #edeff1; border-radius: 10px;">
				<p>...</p>
				<p>...</p>
				<p>...</p>
				<p>...</p>
				<p>...</p>
			</div>
			<div class="col-md-12 border"
				style="height: 200px; background: #edeff1; margin-top: 1em; border-radius: 10px;">
				<p>...</p>
				<p>...</p>
				<p>...</p>
				<p>...</p>
				<p>...</p>
			</div>
			<div class="col-md-4" style="margin-top: 1em;">
				<div class="share mrl">
					<ul>
						<li><label class="share-label" for="share-toggle2">告警规则</label>
							<div
								class="bootstrap-switch bootstrap-switch-wrapper bootstrap-switch-off bootstrap-switch-animate">
								<div class="bootstrap-switch-container">
									<span
										class="bootstrap-switch-handle-on bootstrap-switch-primary">ON</span><label
										class="bootstrap-switch-label">&nbsp;</label><span
										class="bootstrap-switch-handle-off bootstrap-switch-default">OFF</span><input
										type="checkbox" data-toggle="switch">
								</div>
							</div></li>
						<li><label class="share-label" for="share-toggle4">电路规则</label>
							<div
								class="bootstrap-switch bootstrap-switch-wrapper bootstrap-switch-on bootstrap-switch-animate">
								<div class="bootstrap-switch-container">
									<span
										class="bootstrap-switch-handle-on bootstrap-switch-primary">ON</span><label
										class="bootstrap-switch-label">&nbsp;</label><span
										class="bootstrap-switch-handle-off bootstrap-switch-default">OFF</span><input
										type="checkbox" checked="" data-toggle="switch">
								</div>
							</div></li>
						<li><label class="share-label" for="share-toggle6">告警集合</label>
							<div
								class="bootstrap-switch bootstrap-switch-wrapper bootstrap-switch-off bootstrap-switch-animate">
								<div class="bootstrap-switch-container">
									<span
										class="bootstrap-switch-handle-on bootstrap-switch-primary">ON</span><label
										class="bootstrap-switch-label">&nbsp;</label><span
										class="bootstrap-switch-handle-off bootstrap-switch-default">OFF</span><input
										type="checkbox" data-toggle="switch">
								</div>
							</div></li>
					</ul>
					<a href="#" class="btn btn-primary btn-block btn-large">运行</a>
				</div>
				<!-- /share -->
			</div>
			<div class="col-md-8 border"
				style="height: 200px; margin-top: 1em; background: #edeff1; border-radius: 10px;">
				<p>...</p>
				<p>...</p>
				<p>...</p>
				<p>...</p>
				<p>...</p>
			</div>
			<div class="col-md-12 border"
				style="margin-top: 1em; height: 200px; background: #edeff1; border-radius: 10px;">
				<p>...</p>
			</div>
		</div>
		<div id="question" class="row border">
			<h3 class="text-center">问题与反馈</h3>
			<p>...</p>
			<p>...</p>
			<p>...</p>
			<p>...</p>
			<p>...</p>
			<p>...</p>
		</div>
	</div>
	<footer>
		<div class="container" style="background: #edeff1 !important;">
			<div class="row border">
				<div class="col-lg-4 col-lg-offset-8 border main-color"
					style="color: white;">
					<address>
						<strong>告警分析演示平台</strong><br> 公司地址<br> <abbr
							title="Phone">P:</abbr>联系电话电话
					</address>
					<address>
						<strong>上海国响信息科技有限公司</strong><br> <a href="mailto:#">联系邮箱</a>
					</address>
				</div>
			</div>
		</div>
	</footer>
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
</body>
</html>