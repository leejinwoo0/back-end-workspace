<%@page import="com.kh.model.vo.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> 회원 검색 결과</h1>
<% Member member = (Member) request.getAttribute("member"); %>>
<ul>
<li>아이디 : </li>
<li>비밀번호 : </li>
<li>이름 : </li>
</ul>
</body>
</html>