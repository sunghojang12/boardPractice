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
		color : gray;
		text-decoration: none;
	}
	a:hover {
		text-shadow : 1px 1px 1px black;
		
	}
	a:visited {
		color : gray;
	}
</style>
<title>게시물 목록</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/nav.jsp"/>
<div class="container"  style="heigh: 500px !important">
<h2>게시판 목록</h2>
<table class="table table-striped" style="margin:0;" >
	<thead>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성일</th>
			<th>작성자</th>
			<th>조회수</th>
			<th>삭제</th>
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
				<td>
					<button class="btn btn-danger btn-sm">
						<a href="../board/delete?bno=${list.bno}" style="color:white">삭제</a>
					</button>
				</td>
				
			</tr>
		</c:forEach>
	</tbody>
</table>

<div style="text-align : left;">

<%-- 	<c:if test="${page.prev}"> --%>
<%-- 	 <span>[ <a href="/board/listPage?num=${page.startPageNum - 1}">이전</a> ]</span> --%>
<%-- 	</c:if> --%>
<button type="button" class="btn btn-primary" style="margin:0; "><a href="../board/write" style="color:white" >게시물 작성</a></button>
	<ul class="pager" style="margin:0; padding:0;">
	
		<!-- 이전 페이지 -->
		<c:if test="${page.prev}">
			<li><a href="/board/listPage?num=${page.startPageNum - 1}">Previous</a></li>
		</c:if>
		<!-- 페이징 번호 출력 -->
	    <c:forEach begin="${page.startPageNum}" end="${page.endPageNum}" var="num">
		
		 <c:if test="${select != num}">
		  	<button class="btn btn-default btn-sm"><a href="/board/listPage?num=${num}">${num}</a></button>
		</c:if>    
		  
		  <c:if test="${select == num}">
		  	<button class="btn btn-primary btn-sm">${num}</button>
		  </c:if>
		 
		</c:forEach>
		<!-- 다음 페이지 -->
		<c:if test="${page.next}">
			<li><a href="/board/listPage?num=${page.endPageNum + 1}">Next</a></li>
		</c:if>
	    
	</ul>
<%-- 	<c:forEach begin="${page.startPageNum}" end="${page.endPageNum}" var="num"> --%>
<!-- 	 <span> -->
	 
<%-- 	  <c:if test="${select != num}"> --%>
<%-- 	   <button class="btn btn-default btn-sm"><a href="/board/listPage?num=${num}">${num}</a></button> --%>
<%-- 	  </c:if>     --%>
	  
<%-- 	  <c:if test="${select == num}"> --%>
<%-- 	   <button class="btn btn-info btn-sm">${num}</button> --%>
<%-- 	  </c:if> --%>
	    
<!-- 	 </span> -->
<%-- 	</c:forEach> --%>
	
<%-- 	<c:if test="${page.next}"> --%>
<%-- 	 <span>[ <a href="/board/listPage?num=${page.endPageNum + 1}">다음</a> ]</span> --%>
<%-- 	</c:if> --%>
	
</div>

</div>
</body>
</html>