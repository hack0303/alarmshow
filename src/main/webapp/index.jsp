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
	<div class="container" style="background: url('/images/hero.png');">
		<div id="top-a" class="container-fluid" style="height:100px;">
			<div id="row">
				<div class="col-md-6">
					<a href="/app/" class="logo" target="_blank"> <img
						src="/images/logo.png" alt="国响" width="126" height="16">
					</a>
				</div>
				<div class="col-md-4 col-md-offset-2">
				<div class="container-fluid">
				<div class="row" style="margin-top:10px;">
				<div class="col-md-5"><a class="btn btn-block btn-md btn-primary"
						href="/app/login" target="_self">登&nbsp;录</a>
				</div>
				<div class="col-md-5">	
				<a class="btn btn-block btn-md btn-primary"
						href="/app/register" data-toggle="modal" data-target="#signup">注&nbsp;册</a>
				</div>
				<div class="col-md-2"></div>
				</div>
				</div>
				</div>
			</div>
		</div>
		<div class="container-fluid">
			<div id="top-b" class="row carousel slide" data-ride="carousel"
				style="position: relative;">
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0"
						class=""></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"
						class="active"></li>
					<li data-target="#carousel-example-generic" data-slide-to="2"
						class=""></li>
				</ol>
				<div class="carousel-inner" role="listbox">
					<div class="item">
						<img data-src="holder.js/1140x500/auto/#777:#555/text:First slide"
							alt="First slide [1140x500]"
							src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iMTE0MCIgaGVpZ2h0PSI1MDAiIHZpZXdCb3g9IjAgMCAxMTQwIDUwMCIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+PCEtLQpTb3VyY2UgVVJMOiBob2xkZXIuanMvMTE0MHg1MDAvYXV0by8jNzc3OiM1NTUvdGV4dDpGaXJzdCBzbGlkZQpDcmVhdGVkIHdpdGggSG9sZGVyLmpzIDIuNi4wLgpMZWFybiBtb3JlIGF0IGh0dHA6Ly9ob2xkZXJqcy5jb20KKGMpIDIwMTItMjAxNSBJdmFuIE1hbG9waW5za3kgLSBodHRwOi8vaW1za3kuY28KLS0+PGRlZnM+PHN0eWxlIHR5cGU9InRleHQvY3NzIj48IVtDREFUQVsjaG9sZGVyXzE2NzdjZmEyYTE5IHRleHQgeyBmaWxsOiM1NTU7Zm9udC13ZWlnaHQ6Ym9sZDtmb250LWZhbWlseTpBcmlhbCwgSGVsdmV0aWNhLCBPcGVuIFNhbnMsIHNhbnMtc2VyaWYsIG1vbm9zcGFjZTtmb250LXNpemU6NTdwdCB9IF1dPjwvc3R5bGU+PC9kZWZzPjxnIGlkPSJob2xkZXJfMTY3N2NmYTJhMTkiPjxyZWN0IHdpZHRoPSIxMTQwIiBoZWlnaHQ9IjUwMCIgZmlsbD0iIzc3NyIvPjxnPjx0ZXh0IHg9IjM5MC41IiB5PSIyNzUuNDQwMDAwOTE1NTI3MyI+Rmlyc3Qgc2xpZGU8L3RleHQ+PC9nPjwvZz48L3N2Zz4="
							data-holder-rendered="true">
					</div>
					<div class="item active">
						<img
							data-src="holder.js/1140x500/auto/#666:#444/text:Second slide"
							alt="Second slide [1140x500]"
							src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iMTE0MCIgaGVpZ2h0PSI1MDAiIHZpZXdCb3g9IjAgMCAxMTQwIDUwMCIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+PCEtLQpTb3VyY2UgVVJMOiBob2xkZXIuanMvMTE0MHg1MDAvYXV0by8jNjY2OiM0NDQvdGV4dDpTZWNvbmQgc2xpZGUKQ3JlYXRlZCB3aXRoIEhvbGRlci5qcyAyLjYuMC4KTGVhcm4gbW9yZSBhdCBodHRwOi8vaG9sZGVyanMuY29tCihjKSAyMDEyLTIwMTUgSXZhbiBNYWxvcGluc2t5IC0gaHR0cDovL2ltc2t5LmNvCi0tPjxkZWZzPjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+PCFbQ0RBVEFbI2hvbGRlcl8xNjc3Y2ZhMTJlNiB0ZXh0IHsgZmlsbDojNDQ0O2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1mYW1pbHk6QXJpYWwsIEhlbHZldGljYSwgT3BlbiBTYW5zLCBzYW5zLXNlcmlmLCBtb25vc3BhY2U7Zm9udC1zaXplOjU3cHQgfSBdXT48L3N0eWxlPjwvZGVmcz48ZyBpZD0iaG9sZGVyXzE2NzdjZmExMmU2Ij48cmVjdCB3aWR0aD0iMTE0MCIgaGVpZ2h0PSI1MDAiIGZpbGw9IiM2NjYiLz48Zz48dGV4dCB4PSIzMzUuNjE2NjY4NzAxMTcxOSIgeT0iMjc1LjQ0MDAwMDkxNTUyNzMiPlNlY29uZCBzbGlkZTwvdGV4dD48L2c+PC9nPjwvc3ZnPg=="
							data-holder-rendered="true">
					</div>
					<div class="item">
						<img data-src="holder.js/1140x500/auto/#555:#333/text:Third slide"
							alt="Third slide [1140x500]"
							src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iMTE0MCIgaGVpZ2h0PSI1MDAiIHZpZXdCb3g9IjAgMCAxMTQwIDUwMCIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+PCEtLQpTb3VyY2UgVVJMOiBob2xkZXIuanMvMTE0MHg1MDAvYXV0by8jNTU1OiMzMzMvdGV4dDpUaGlyZCBzbGlkZQpDcmVhdGVkIHdpdGggSG9sZGVyLmpzIDIuNi4wLgpMZWFybiBtb3JlIGF0IGh0dHA6Ly9ob2xkZXJqcy5jb20KKGMpIDIwMTItMjAxNSBJdmFuIE1hbG9waW5za3kgLSBodHRwOi8vaW1za3kuY28KLS0+PGRlZnM+PHN0eWxlIHR5cGU9InRleHQvY3NzIj48IVtDREFUQVsjaG9sZGVyXzE2NzdjZjllMjAxIHRleHQgeyBmaWxsOiMzMzM7Zm9udC13ZWlnaHQ6Ym9sZDtmb250LWZhbWlseTpBcmlhbCwgSGVsdmV0aWNhLCBPcGVuIFNhbnMsIHNhbnMtc2VyaWYsIG1vbm9zcGFjZTtmb250LXNpemU6NTdwdCB9IF1dPjwvc3R5bGU+PC9kZWZzPjxnIGlkPSJob2xkZXJfMTY3N2NmOWUyMDEiPjxyZWN0IHdpZHRoPSIxMTQwIiBoZWlnaHQ9IjUwMCIgZmlsbD0iIzU1NSIvPjxnPjx0ZXh0IHg9IjM3Ny44NzUiIHk9IjI3NS40NDAwMDA5MTU1MjczIj5UaGlyZCBzbGlkZTwvdGV4dD48L2c+PC9nPjwvc3ZnPg=="
							data-holder-rendered="true">
					</div>
				</div>
				<a class="left carousel-control" href="#" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
		<div class="container-fluid" style="margin-top:1em;">
			<div class="row">
				<div id="enterpoint" class="col-md-6 col-md-offset-3 border">
					<a class="btn btn-block btn-lg btn-primary" href="/app/">进入功能分区</a>
				</div>
			</div>
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
		src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
	<script src="https://unpkg.com/popper.js@1.14.1/dist/umd/popper.min.js"></script>
	<script src="/js/flat-ui.min.js"></script>
	<script src="/js/application.js"></script>
	<script src="/js/index.js"></script>
</body>
</html>