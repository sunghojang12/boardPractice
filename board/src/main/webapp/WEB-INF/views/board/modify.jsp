<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>게시물 작성</title>
<style type="text/css">
	a {
		color : black;
		text-decoration: none;
	}
	a:hover {
		color : gray;
		text-decoration: none;
	}
	a:visited {
		color : black;
	}
</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/nav.jsp"/>
<div class="container">
<h2>수정화면</h2> 
  <form action="../board/modify" method="post">
  	<input type="hidden" name="bno" value="${vo.bno}"/>
    <div class="form-group">
      <label >제목</label>
      <input type="text" class="form-control" name="title" value="${vo.title}"/>
    </div>
    <div class="form-group">
      <label for="writer">작성자</label>
      <input type="text" class="form-control"  name="writer" value="${vo.writer}" readonly/>
    </div>
    <label>내용</label>
    <textarea cols="50" rows="5" class="form-control" name="content">${vo.content}</textarea><br/>
    <div style="text-align: center">
	    <button type="submit" class="btn btn-warning">수정</button>
	    <button class="btn btn-primary"><a href="../board/list" style="color:white">리스트</a></button>
    </div>
  </form>
</div>
</body>
</html>