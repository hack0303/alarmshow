<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<form id="form001" action="/app/test/001">
<select id="A">
<option value="a">呵呵</option>
</select>
<input id="B" value="a">
<input type="button" value="提交">
</form>
<script>
$("input[type='button']").click(function(){
	
	if($('#A').attr('name')==null){
		 alert('没有属性');
		 }
	if($('#B').attr('name')==null)
});
//$('#form001').submit();
</script>
</body>
</html>