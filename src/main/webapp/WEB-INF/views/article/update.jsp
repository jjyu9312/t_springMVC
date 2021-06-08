<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="dto" value="${articleDTO}"/>
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
<form action="updateAction" method="post">
<table>
<caption>글수정</caption>
<tr>
	<th>글 번호</th>
	<td>${dto.no}<input type="hidden" name="no" value="${dto.no}" required="required" /></td>
</tr>
<tr>
	<th>이름</th>
	<td><input type="text" name="name" value="${dto.name}" autofocus="autofocus" required="required"/></td>
</tr>
<tr>
	<th>비밀번호</th>
	<td><input type="password" name="passwd"  required="required"/>
		<div class="alert_msg">처음 글작성시 입력한 비번을 재입력하세요</div>
	</td>
</tr>
<tr>
	<th>제목</th>
	<td><input type="text" name="title"  required="required" value="${dto.title}" /></td>
</tr>
<tr>
	<th>내용</th>
	<td><textarea rows="8" cols="60" name="content"  required="required">${dto.content}</textarea></td>
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
