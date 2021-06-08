<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/favicon.png">
<title>글수정</title>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<style type="text/css">
body {
		font-family: 'Nanum Pen Script', cursive;
		font-size:25px;
     }
.alert_msg {
		color: red;
}
</style>
</head>
<body>
<form action="deleteAction" method="post">
<table>
<caption>글삭제</caption>
<tr>
	<th>글 번호</th>
	<td>${no}<input type="hidden" name="no" value="${no}" required="required" /></td>
</tr>
<tr>
	<th>비밀번호</th>
	<td><input type="password" name="passwd"  required="required" autofocus="autofocus"/>
		<div class="alert_msg">처음 글작성시 입력한 비번을 재입력하세요</div>
	</td>
</tr>
<tr>
	<th></th>
	<td>
		<button type="submit">완료</button>
		<button type="reset">초기화</button>
	</td>
</tr>
</table>
</form>
</body>
</html>
