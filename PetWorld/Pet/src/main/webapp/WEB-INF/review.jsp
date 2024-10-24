<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>리뷰 목록</title>
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

        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 12px;
            text-align: left;
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

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .review-image {
            width: 100px; /* 이미지 너비 설정 */
            height: auto; /* 비율 유지 */
        }
        
        .header a {
        margin-right: 200px;
        }
    </style>
</head>
<body>
<div class="header">
    <h1>리뷰 목록</h1>
    <a href="<c:url value='/reviews/reviewForm'/>">리뷰 작성</a>
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
