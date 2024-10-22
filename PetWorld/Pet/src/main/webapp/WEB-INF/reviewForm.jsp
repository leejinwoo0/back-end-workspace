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

        textarea {
            width: 100%;
            height: 100px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
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
    </style>
</head>
<body>
<h1>리뷰 작성</h1>

<c:if test="${not empty param.error}">
    <div class="error">오류가 발생했습니다. 다시 시도해주세요.</div>
</c:if>

<form action="<c:url value='/reviews/add'/>" method="post">
    <input type="hidden" name="id" value="${id}"/>
    <label for="content">리뷰 내용:</label><br>
    <textarea id="content" name="content" required></textarea><br><br>
    <input type="submit" value="작성하기"/>
</form>

<a href="<c:url value='/reviews/list'/>">목록으로 돌아가기</a>

</body>
</html>