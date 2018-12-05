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
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="/css/flat-ui.min.css">
<link rel="stylesheet" href="/css/tools.css">
<title>网站后台</title>
</head>
<body style="height:100%;">
<%@include file="/WEB-INF/jsp/areas/head.jsp" %>

<div class="container-fluid" style="height:100%;overflow:hidden;">
<div class="row border" style="height:100%;overflow:hidden;">
<div id="left" class="col-lg-2 text-center border"><%@include file="/WEB-INF/jsp/areas/left.jsp" %></div>
<div id="right" class="col-lg-10" id="nav_area" style="height:100%;overflow-y:scroll;border:#34495e solid 5px;border-radius:10px;"><%@include file="/WEB-INF/jsp/areas/right.jsp" %></div>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
<script src="https://unpkg.com/popper.js@1.14.1/dist/umd/popper.min.js"></script>
<script src="/js/flat-ui.min.js"></script>
<script src="/js/backstage/left.js" type="text/javascript"></script>

</body>
</html>