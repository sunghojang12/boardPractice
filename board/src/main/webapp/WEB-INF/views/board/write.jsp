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
</head>
<body>
<jsp:include page="/WEB-INF/views/nav.jsp"/>
<div class="container">
<h2>작성양식</h2> 
  <form action="../board/write" method="post">
    <div class="form-group">
      <label >제목</label>
      <input type="text" class="form-control"  placeholder="제목을 입력해주세요" name="title">
    </div>
    <div class="form-group">
      <label for="writer">작성자</label>
      <input type="text" class="form-control"  name="writer">
    </div>
    <label>내용</label>
    <textarea cols="50" rows="5" class="form-control" name="content"></textarea><br/>
    
    <button type="submit" class="btn btn-primary">작성</button>
    <button class="btn btn-primary"><a href="../board/listPage?num=1" style="color:white">리스트</a></button>
  </form>
</div>
</body>
</html>