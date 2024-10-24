<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>회원 정보 수정</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #e9ecef;
            margin: 0;
            padding: 20px;
        }
        .form-container {
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 15px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: auto;
        }
        h2 {
            text-align: center;
            color: #343a40;
        }
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }
        input[type="text"],
        input[type="password"],
        input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ced4da;
            border-radius: 4px;
        }
        button {
            background-color: #007bff;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
        }
        button:hover {
            background-color: #0056b3;
        }
        .error {
            color: red;
            margin-bottom: 15px;
        }
        .feedback {
            margin-top: -10px;
            margin-bottom: 15px;
            font-size: 0.9em;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>회원 정보 수정</h2>

    <c:if test="${not empty errorMessage}">
        <div class="error">${errorMessage}</div>
    </c:if>

    <form action="${pageContext.request.contextPath}/mypage/update" method="post">
        <label for="name">이름:</label>
        <input type="text" id="name" name="name" value="${member.name}" required>

        <label for="id">아이디:</label>
        <input type="text" id="id" name="id" value="${member.id}">

        <label for="password">비밀번호:</label>
        <input type="password" id="password" name="password" placeholder="비밀번호 변경 원할 경우 입력" >

        <label for="phone">전화번호:</label>
        <input type="text" id="phone" name="phone" value="${member.phone}" required>

        <label for="address">주소:</label>
        <input type="text" id="address" name="address" value="${member.address}" required>

        <label for="email">이메일:</label>
        <input type="email" id="email" name="email" value="${member.email}" required>

        <button type="submit">정보 수정</button>
    </form>
</div>

</body>
</html>
