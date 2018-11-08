<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录页</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid">
<div class="row">
<div class="col-lg-6 col-lg-offset-3" style="margin-top:2em;margin-bottom:2em;"><h1 class="text-center">告警分析过滤平台</h1></div>
</div>
<div class="row" style="width:40em;height:20em;margin:auto auto;border:1px solid red;">
<form action="/app/login/in" class="form-group" method="post">
<label for="_user_label">用户名</label><input name="userDetail.account" class="form-control" id="_user_label" type="text">
<label for="_password_label">密码</label><input name="password" class="form-control" id="_password_label">
<button type="button" class="btn btn-default">重置</button> <button type="submit" class="btn btn-default">提交</button>
</form>
</div>
</div>
</body>
</html>