<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.creating.www.beans.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
Object attr=request.getSession().getAttribute("user");
if(attr==null) response.sendRedirect("/app/login");
//else System.out.println(((UserBean)(attr)).getLastLoginTime());
%>
<!DOCTYPE html>
<html lang="zh-CN" style="height:100%;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css">
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<link rel="stylesheet" href="/css/tools.css">
<title>DEMO主页</title>
</head>
<body style="height:100%;">
<div class="container-fluid" style="border:1px solid red;height:100%;overflow-y:scroll;overflow-x:hidden;">
<div class="row border"><%@include file="/WEB-INF/jsp/areas/head.jsp" %></div>
<div class="row border" style="height:100%;overflow:hidden;">
<div id="left" class="col-lg-2 text-center border" style="height:100%;"><%@include file="/WEB-INF/jsp/areas/left.jsp" %></div>
<div id="right" class="col-lg-10 border" id="nav_area" style="height:100%;overflow-y:scroll;"><%@include file="/WEB-INF/jsp/areas/right.jsp" %></div>
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
<script src="/js/index/left.js"></script>
</body>
</html>