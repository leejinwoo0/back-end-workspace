<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>로그인</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
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
            text-decoration: none; 
        }

        header nav a:hover {
            background-color: black;
            color: white;
        }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: white;
            margin: 0;
            padding-top: 130px; 
            display: flex;
            justify-content: center;
            align-items: flex-start;
            height: 100vh;
        }

        .form-container {
            background: white;
            padding: 30px;
            border-radius: 8px;
            border: 3px solid black;
            width: 300px;
            margin-top: 200px; 
        }

        h2 {
            text-align: center;
            color: black;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
            color:black;
        }

        input[type="text"],
        input[type="password"] {
            width: 50%;
            padding: 12px;
            margin-bottom: 15px;
            
            border: 1px solid black;
            border-radius: 4px;
        }

        button {
            background-color: #007bff;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 70%;
            transition: background-color 0.3s;
            font-weight: bold;
            margin-left: 50px;
        }

        button:hover {
            background-color: #0056b3;
        }

        .error {
            color: red;
            text-align: center;
            margin-top: 10px;
        }
        
        .form-container p {
        color: black;
        margin-left: 50px;
        text-decoration: none!important;
        }
        
        .form-container a{
        color: black;
        font-size: 1.5rem;
        font-weight: bold;
       text-decoration: none!important;
        }
        
        .form-container button {
        color: black;
        background-color: white;
        border : 1px solid black;
        }
        
        .gg {
        display: flex; 
        align-items: center; 
        margin-bottom: 15px; 
        margin-left: -70px;
    }

       .gg label {
        width: 30%; 
        font-weight: bold;
        margin-right: 10px; 
        text-align: right; 
    }
        
     
    </style>
</head>
<body>

<header>
    <a href="/index">
        <img src="img/mainlogo.webp">
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

<div class="form-container">
    <h2>로그인</h2>

    <c:if test="${not empty errorMessage}">
        <div class="error">${errorMessage}</div>
    </c:if>

    <form action="${pageContext.request.contextPath}/login" method="post" accept-charset="UTF-8">
        <div class= gg>
        <label for="id">아이디</label>
        <input type="text" id="id" name="username" required>
        </div>
        
        <div class= gg>
        <label for="password">비밀번호</label>
        <input type="password" id="password" name="password" required>
        </div>
        <button type="submit">로그인</button>
    </form>

    <p>계정이없다면 => <a href="${pageContext.request.contextPath}/signUp">회원가입</a></p>
</div>

</body>
</html>
