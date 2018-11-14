<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.creating.www.beans.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="zh-CN" style="height:100%;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/tools.css">
<link rel="stylesheet" href="/css/flat-ui.min.css">
<style>
.header__nav {
    margin-top: 25px;
    text-align: right;
}
.button.white:not(:hover) {
	color: #11bba6 !important;
	background-color: #fafafa !important;
}
.button.transparent:not(:hover) {
	color: #fff;
	background-color: rgba(250, 250, 250, 0.2) !important;
}
.button.small {
	font-size: 14px;
	font-weight: 600;
	padding: 0.8em 1.8em;
	border-radius: 30px;
}
.button {
	display: inline-block;
	text-decoration: none !important;
	transition: 0.4s;
}
.header__nav .button:last-child {
	margin-left: 16px;
}
.header .logo {
	position: absolute;
	z-index: 2;
	left: 15px;
	top: 35px;
}
</style>
<title>网站主页</title>
</head>
<body class="golbal-background-color" style="height:100%;">
<div class="container">
<div id="top" class="row border" style="height:100%;">
<div id="row">
<div class="col-md-6">
<a href="https://sendpulse.com/" class="logo" target="_blank">
<img src="./images" alt="国响" width="126" height="16">
</a></div>
<div class="col-md-6 header__nav"><a class="button small transparent" href="/app/login" target="_self">登&nbsp;录</a><a class="button small white" href="/app/register" data-toggle="modal" data-target="#signup">注&nbsp;册</a></div>
</div>
<div id="banner" class="row border">
<div id="enterpoint" class="row border"></div>
</div>
</div>
<div id="nav" class="row border">
          <div class="share mrl col-md-4" style="margin-left:0px;" >
            <ul>
              <li>
                <label class="share-label" for="share-toggle2">告警规则</label>
                <div class="bootstrap-switch bootstrap-switch-wrapper bootstrap-switch-animate bootstrap-switch-off"><div class="bootstrap-switch-container"><span class="bootstrap-switch-handle-on bootstrap-switch-primary">ON</span><label class="bootstrap-switch-label">&nbsp;</label><span class="bootstrap-switch-handle-off bootstrap-switch-default">OFF</span><input type="checkbox" data-toggle="switch"></div></div>
              </li>
              <li>
                <label class="share-label" for="share-toggle4">电路规则</label>
                <div class="bootstrap-switch bootstrap-switch-wrapper bootstrap-switch-animate bootstrap-switch-on"><div class="bootstrap-switch-container" style=""><span class="bootstrap-switch-handle-on bootstrap-switch-primary">ON</span><label class="bootstrap-switch-label">&nbsp;</label><span class="bootstrap-switch-handle-off bootstrap-switch-default">OFF</span><input type="checkbox" checked="" data-toggle="switch"></div></div>
              </li>
              <li>
                <label class="share-label" for="share-toggle6">实时告警</label>
                <div class="bootstrap-switch bootstrap-switch-wrapper bootstrap-switch-animate bootstrap-switch-off"><div class="bootstrap-switch-container"><span class="bootstrap-switch-handle-on bootstrap-switch-primary">ON</span><label class="bootstrap-switch-label">&nbsp;</label><span class="bootstrap-switch-handle-off bootstrap-switch-default">OFF</span><input type="checkbox" data-toggle="switch"></div></div>
              </li>
            </ul>
            <a href="#" class="btn btn-primary btn-block btn-large">开始</a>
          </div> <!-- /share -->
<div class="col-md-8" style="height:200px;">
he
</div>
</div>
<div id="question" class="row border">
问题
</div>
<div id="footer" class="row border">
<div class="col-lg-4 col-lg-offset-8 border">
<address>
  <strong>告警分析演示平台</strong><br>
  公司地址<br>
  <abbr title="Phone">P:</abbr>联系电话电话
</address>
<address>
  <strong>上海国响信息科技有限公司</strong><br>
  <a href="mailto:#">联系邮箱</a>
</address>
</div>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script src="https://unpkg.com/popper.js@1.14.1/dist/umd/popper.min.js" crossorigin="anonymous"></script>
<script src="/js/flat-ui.min.js"></script>
<script src="/js/index.js"></script>

</body>
</html>