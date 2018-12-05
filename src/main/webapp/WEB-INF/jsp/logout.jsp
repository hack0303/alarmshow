<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="container-fluid" style="margin-top:10px;">
	<div class="row">
		<div class="col-md-4">
			<div class="container-fluid">
			<div class="row">
			<div class="col-md-4">
				[当前用户]
				</div>
				<div class="col-md-8" style="color: red;"> 
				[<c:out value="${sessionScope.user.userDetail.nickname}" />]
				</div>
			</div>
			</div>
		</div>
		<div class="col-md-4">,
			<fmt:formatDate value="${sessionScope.user.lastLoginTime}"
				type="both" pattern="yyyy-MM-dd HH:mm:ss" />
		</div>
		<div class="col-md-3">
			<a href="/app/login/out" class="btn btn-block btn-md btn-primary"
				style="border-radius:10px; width:5em;">退&nbsp;出</a>
		</div>
		<div class="col-md-1"></div>
	</div>
</div>