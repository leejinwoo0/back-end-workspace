<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>펫시터 목록</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            padding: 20px;
        }
        
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
            background-color: white;
        }

        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #f0f0f0;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>
    <h1>펫시터 목록</h1>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>이름</th>
                <th>이메일</th>
                <th>역할</th>
            </tr>
        </thead>
        <tbody>
            <!-- petsitters 리스트를 반복하며 출력 -->
            <c:forEach var="petSitter" items="${petsitters}">
                <tr>
                    <td>${petSitter.id}</td>
                    <td>${petSitter.name}</td>
                    <td>${petSitter.email}</td>
                    <td>${petSitter.role}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
