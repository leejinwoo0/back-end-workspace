<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>리뷰 작성</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 20px;
            background-color: #f4f4f4;
        }

        h1 {
            color: #333;
        }

        input[type="text"], textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        textarea {
            height: 100px;
            resize: none; /* 크기 조절 비활성화 */
        }

        input[type="submit"] {
            background-color: #007BFF;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 4px;
            cursor: pointer;
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
        }
    </style>
</head>
<body>
<h1>리뷰 작성</h1>

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
