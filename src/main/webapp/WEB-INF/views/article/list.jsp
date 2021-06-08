<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Pen+Script&display=swap" rel="stylesheet">
<style type="text/css">
body {
		font-family: 'Nanum Pen Script', cursive;
		font-size:25px;
     }
</style>
</head>
<body>
<table border="1">
	<caption>게시물 리스트</caption>
<tr>
	<th>글번호</th>
	<th>제목</th>
	<th>작성자</th>
	<th>날짜</th>
	<th>조회수</th>
</tr>	
<c:forEach items="${list}" var="dto">
<tr>
	<td>${dto.no}</td>
	<td><a href="view?no=${dto.no}">${dto.title}</a></td>
	<td>${dto.name}</td>
	<td>${dto.regdate}</td>
	<td>${dto.readcount}</td>
</tr>
</c:forEach>
</table><br/>
<a href="insert">게시물 입력</a>
</body>
</html>