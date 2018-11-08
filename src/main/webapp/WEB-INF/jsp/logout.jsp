<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="row text-right">
<div class="col-lg-4 col-lg-offset-2">[当前用户] [<c:out value="${sessionScope.user.userDetail.nickname}"/>]</div><div class="col-lg-4">最近登录时间:<fmt:formatDate value="${sessionScope.user.lastLoginTime}" type="both" pattern="yyyy-MM-dd HH:mm:ss"/></div><div class="col-lg-2">[<a href="/app/login/out">退出</a>]</div></div>