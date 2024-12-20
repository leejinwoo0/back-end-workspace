<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>리뷰 작성</title>
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

        input[type="text"], textarea {
            width: 100%;
            padding: 10px;
            border: 2px solid black;
            border-radius: 4px;
        }

        textarea {
            height: 100px;
            resize: none; /* 크기 조절 비활성화 */
        }

        input[type="submit"] {
            background-color: black;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 4px;
            cursor: pointer;
            margin-left: 100px;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        .error {
            color: red;
            margin-bottom: 20px;
        }

        label {
            font-weight: bold;
        }

        .form-group {
            margin-bottom: 15px;
            width: 70%;
            margin-top: 20px;
            margin-left: 100px;
           
            
        }
        form {
          margin-top: 50px;
          border: 3px solid black;
          width: 900px;
          height: 500px;
          margin-left: 500px;
        }
        .ff {
        margin-top: 200px;
        text-align: center;
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
<h1>리뷰 작성</h1>
</div>

<c:if test="${not empty param.error}">
    <div class="error">오류가 발생했습니다. 다시 시도해주세요.</div>
</c:if>

<form action="<c:url value='/reviews/add'/>" method="post">
    <input type="hidden" name="id" value="${user.id}"/> <!-- 로그인한 사용자 ID 전송 -->

    <div class="form-group">
        <label for="title">리뷰 제목:</label><br>
        <input type="text" id="title" name="title" required/><br>
    </div>

    <div class="form-group">
        <label for="username">아이디:</label><br>
        <input type="text" id="username" name="username" /> <!-- 사용자가 직접 입력 가능 -->

    </div>

    <div class="form-group">
        <label for="date">작성 날짜:</label><br>
        <input type="text" id="date" name="reviewDate" required/> <!-- 사용자가 직접 입력 가능 -->

    </div>

    <div class="form-group">
        <label for="content">리뷰 내용:</label><br>
        <textarea id="content" name="reviewText" required></textarea><br>
    </div>

    <input type="submit" value="작성하기"/>
</form>

</body>
</html>
