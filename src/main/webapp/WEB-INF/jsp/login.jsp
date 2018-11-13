<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录页</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<link rel="stylesheet" href="../../css/flat-ui.min.css">
<style>
.container {

    width: 970px !important;

}
</style>
</head>
<body>
	<div class="container-fluid container">
		<div class="login">
		<form action="/app/login/in" class="form-group" method="post">
		
            <div class="login-icon">
            <img src="../../images/login/icon.png" alt="Welcome to Mail App">
            <h4>Welcome to <small>AE Analysis Platform</small></h4>
          </div>
			<div class="login-screen">
				<div class="login-form">
					<div class="form-group">
						<input name="userDetail.account" type="text" class="form-control login-field" value=""
							placeholder="Enter your name" id="login-name"> <label
							class="login-field-icon fui-user" for="login-name"></label>
					</div>

					<div class="form-group">
						<input name="password" type="password" class="form-control login-field" value=""
							placeholder="Password" id="login-pass"> <label
							class="login-field-icon fui-lock" for="login-pass"></label>
					</div>

					<a id="submit" class="btn btn-primary btn-lg btn-block">Log in</a> <a
						class="login-link" href="#">Lost your password?</a>
				</div>
			</div>
			</form>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"
		integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
		crossorigin="anonymous"></script>
	<script src="../../js/flat-ui.min.js"></script>
	<script>
    $(document).ready(function(){
         $('#submit').click(function(){
        	  $('form').submit();
             });
        });
	</script>
</body>
</html>