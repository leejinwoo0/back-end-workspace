<%@page import="com.kh.model.vo.Member"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> 전체 회원 목록</h1>
<a href="/">메인페이지로 이동</a>
<% List<Member> list = (List<Member>) request.getAttribute("list"); %>
<table border="1">
<tr>
<th>번호</th>
<th>아이디</th>
<th>비밀번호</th>
<th>이름</th>
</tr>
<c:forEach items="${list}" var="m" vaStatus="status">
<tr>
<%--index : 0부터 시작
    count : 1부터 시작
    둘다가능하나 위의 차이가 있음
 --%>
<td>${status.count}</td>
<td>${m.id}</td>
<td>${m.password}</td>
<td>${m.name}</td>
</tr>
</c:forEach>
</body>
</html>