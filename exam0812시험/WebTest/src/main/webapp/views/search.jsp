<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>사원 정보</h1>

<ul>

<li>사원 번호 : ${employee.empId}</li>

<li>사원 이름 : ${employee.empNmae}</li>

<li>사원 이메일 : ${employee.email}</li>

<li>사원 전화번호 : ${employee.phone}</li>

</ul>

<a href="/">메인 페이지로 돌아가기</a>
</body>
</html>

<!-- 
search.jsp파일에서

위그림 처럼 나오게하기위해 el문법사용하여 
<li>사원 번호 : ${employee.empId}</li>

<li>사원 이름 : ${employee.empNmae}</li>

<li>사원 이메일 : ${employee.email}</li>

<li>사원 전화번호 : ${employee.phone}</li>

바꿔주기
 -->
