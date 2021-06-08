<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="dto" value="${articleDTO}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" type="image/png" href="/favicon.png">
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
	<caption>글 상세보기</caption>
<tr>
	<th>글번호</th>
	<td>${dto.no}</td>
</tr>
<tr>
	<th>제목</th>
	<td>${dto.title}</td>
</tr>
<tr>
	<th>작성자</th>
	<td>${dto.name}</td>
</tr>
<tr>
	<th>내용</th>
	<td>${dto.content}</td>
</tr>
<tr>
	<th>작성일</th>
	<td>${dto.regdate}</td>
</tr>
<tr>
	<th>조회수</th>
	<td>${dto.readcount}</td>
</tr>
</table><br/>
<a href="list">리스트</a>
<a href="update?no=${dto.no}">수정</a>
<a href="delete?no=${dto.no}">삭제</a>
</body>
</html>
