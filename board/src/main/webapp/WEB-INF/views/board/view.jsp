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
<title>게시물 조회</title>
<style type="text/css">
	a {
		color : white;
		text-decoration: none;
	}
	a:hover {
		color : gray;
		text-decoration: none;
	}
</style>
</head>
<body>
<jsp:include page="/WEB-INF/views/nav.jsp"/>
<div class="container">
<h2>게시물 조회</h2> 
  <form>
    <div class="form-group">
      <label >제목</label>
      <input type="text" class="form-control" name="title" value="${view.title}" readonly/>
    </div>
    <div class="form-group">
      <label for="writer">작성자</label>
      <input type="text" class="form-control" name="writer" value="${view.writer}" readonly/>
    </div>
    <label>내용</label>
    <textarea cols="50" rows="5" class="form-control" name="content" readonly>${view.content}</textarea><br/>
  </form>
  <div style="text-align: center">
  	<button class="btn btn-warning"><a href="../board/getModify?bno=${view.bno}">수정화면</a></button>
  	<button class="btn btn-primary"><a href="../board/listPage?num=1">리스트</a></button>
  </div>
</div>
</body>
</html>