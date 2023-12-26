<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
	a:link {
		color : black;
		text-decoration: none;
	}
	a:hover {
		color : blue;
		
	}
	a:visited {
		color : black;
	}
</style>
<title>게시물 목록</title>
</head>
<body>
<div class="container">
<h2>게시판 목록</h2>
<table class="table table-striped">
	<thead>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성일</th>
			<th>작성자</th>
			<th>조회수</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${list}" var="list">
			<tr>
				<td>${list.bno}</td>
				<td><a href="/board/view?bno=${list.bno}">${list.title}</a></td>
				<td> <fmt:formatDate value="${list.regDate}" pattern="yy-MM-dd hh:mm"/></td>
				<td>${list.writer}</td>
				<td>${list.viewCnt}</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<button type="button" class="btn btn-default"><a href="../board/write" >게시물 작성</a></button>

</div>
</body>
</html>