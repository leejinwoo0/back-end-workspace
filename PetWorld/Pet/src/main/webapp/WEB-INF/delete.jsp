<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
        background-color: #f8f9fa;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    h1 {
        color: #333;
        text-align: center;
        margin-bottom: 20px;
    }

    .form-container {
        width: 400px;
        padding: 30px;
        border: 3px solid black;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        background-color: #fff;
        margin-top: 150px;
    }

    .form-container label {
        display: block;
        margin-bottom: 8px;
        font-weight: bold;
        color: black;
    }

    .form-container input[type="text"],
    .form-container input[type="password"] {
        width: 50%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid black;
        border-radius: 4px;
    }

    .form-container button {
        width: 50%;
        padding: 10px;
        border: none;
        border-radius: 4px;
        background-color: black;
        color: white;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
        margin-left: 100px;
    }

    .form-container button:hover {
        background-color: #c82333;
    }

   
    .error {
        color: #dc3545;
        font-size: 14px;
        margin-bottom: 10px;
        text-align: center;
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



<div class="form-container">
     
     <h1>회원 탈퇴</h1>
    
    <!-- 에러 메시지 출력 -->
    <c:if test="${not empty errorMessage}">
        <div class="error">${errorMessage}</div>
    </c:if>

    <!-- 회원 탈퇴 폼 -->
    <form action="${pageContext.request.contextPath}/mypage/delete" method="post">
    
        <div class=gg>
        <label for="id">아이디:</label>
        <input type="text" id="id" name="id" value="${member.id}" >
        </div>
         
        <div class=gg> 
        <label for="password">비밀번호:</label>
        <input type="password" id="password" name="password">
        </div>

        <button type="submit">회원 탈퇴</button>
    </form>
</div>

</body>
</html>
