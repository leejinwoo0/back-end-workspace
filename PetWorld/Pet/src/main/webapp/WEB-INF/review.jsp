<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>리뷰 목록</title>
    <style>
    
    
        header {
            background-color: white;
            position: fixed;
            top: 0;
            width: 100%;
            display: flex;
            justify-content: space-between;
            height: 130px;
            align-items: center;
            z-index: 1000;
            border-bottom: 3px solid black;
        }

        header img {
            width: 100px; 
            height: 100px; 
            border-radius: 80%;
            margin-left: 50px;
            margin-top: 10px;
        }

        header a {
            font-size: 2.3rem;
            font-weight: bold;
            margin-left: 10px;
        }

        header > * {
            width: 60%;
            display: flex;
        }

        header nav {
            justify-content: end;
            height: 100%;
        }

        header nav a {
            font-size: 1rem;
            font-weight: bold; 
            display: flex;
            align-items: center;
            padding: 10px;
            color:black;
            text-decoration: none!important; 
        }

        header nav a:hover {
            background-color: black;
            color: white;
        }
       
    
    
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background-color: white;
        }

        h1 {
            color: #333;
        }

        table {
        
            width: 80%;
            border-collapse: collapse;
            margin-top:10px;
            margin-left: 50px;
            border: 3px solid black;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border: 1px solid black;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        a {
            text-decoration: none;
            color: #007BFF;
        }

        a:hover {
            text-decoration: underline;
        }

        form {
            display: inline;
        }

        .error {
            color: red;
            margin-bottom: 20px;
        }

        .ff{
        margin-top: 200px;
        margin-left: 50px;
        }
        
        .fff{
        margin-top: 30px;
        margin-left:1400px;
        }
        
        .fff a {
         font-size: 1.25rem;
         font-weight: bold;
         color: black
        }
        
    </style>
</head>
<body>

<header>
     <a href="${pageContext.request.contextPath}/index">
        <img src="${pageContext.request.contextPath}/img/mainlogo.webp" alt="Main Logo">
    </a>
    <nav>
        <c:choose>
            <c:when test="${not empty sessionScope.userId}">
                <a href="/logout">로그아웃</a>
                <a href="/update">회원정보수정</a>
                <a href="/reservation/mypage">마이페이지</a>
                <a href="/reservation">예약</a>
            </c:when>
            <c:otherwise>
                <a href="/signUp">회원가입</a> 
                <a href="/login">로그인</a>
            </c:otherwise>
        </c:choose>
        <a href="/FAQ">FAQ</a>
        <a href="<c:url value='/reviews/list'/>">리뷰</a>
        <a href="/petsitter/list">펫시터</a>
        <a href="/service">서비스 종류</a>  
    </nav>
</header> 

    <div class=ff>
    <h1>리뷰 목록</h1>
    </div>
    
    <div class=fff>
    <a href="<c:url value='/reviews/reviewForm'/>">리뷰작성 하러가기</a>
    </div>

<c:if test="${not empty param.error}">
    <div class="error">오류가 발생했습니다.</div>
</c:if>

<table>
    <thead>
        <tr>
            <th>작성자 ID</th>
            <th>작성일</th>
            <th>리뷰 제목</th>
            <th>리뷰 내용</th>          
        </tr>
    </thead>
    <tbody>
        <c:forEach var="review" items="${reviews}">
            <tr>
                <td>${review.id}</td>
                <td>${review.reviewDate}</td>
                <td>${review.title}</td>
                <td>${review.reviewText}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>

</body>
</html>
