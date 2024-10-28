<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
    /* 기본 스타일 */
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
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        background-color: #fff;
    }

    .form-container label {
        display: block;
        margin-bottom: 8px;
        font-weight: bold;
        color: #555;
    }

    .form-container input[type="text"],
    .form-container input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    .form-container button {
        width: 100%;
        padding: 10px;
        border: none;
        border-radius: 4px;
        background-color: #dc3545;
        color: white;
        font-size: 16px;
        font-weight: bold;
        cursor: pointer;
    }

    .form-container button:hover {
        background-color: #c82333;
    }

    /* 에러 메시지 스타일 */
    .error {
        color: #dc3545;
        font-size: 14px;
        margin-bottom: 10px;
        text-align: center;
    }
    
    .asd {
    margin-bottom:400px;
    display:flex;
     text-align: center;
    }
</style>
</head>
<body>
<div class="asd">
<h1>회원 탈퇴</h1>
</div>


<div class="form-container">
    <!-- 에러 메시지 출력 -->
    <c:if test="${not empty errorMessage}">
        <div class="error">${errorMessage}</div>
    </c:if>

    <!-- 회원 탈퇴 폼 -->
    <form action="${pageContext.request.contextPath}/mypage/delete" method="post">
        <label for="id">아이디:</label>
        <input type="text" id="id" name="id" value="${member.id}" >

        <label for="password">비밀번호:</label>
        <input type="password" id="password" name="password">

        <button type="submit">회원 탈퇴</button>
    </form>
</div>

</body>
</html>
