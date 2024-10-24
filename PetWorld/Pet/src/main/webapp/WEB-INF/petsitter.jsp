<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>펫시터</title>
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
               <th>펫시터 이름</th>
               <th>펫시터 등급</th> 
               <th>펫시터 전화번호</th>
               <th>펫시터 주소</th>
               <th>펫시터 가격</th>                        
            </tr>
        </thead>
        <tbody>
            <!-- petsitters 리스트를 반복하며 출력 -->
            <c:forEach var="petSitter" items="${petsitters}">
                <tr>                   
                    <td>${petSitter.petsitterName}</td>
                    <td>${petSitter.petsitterGrade}</td>
                    <td>${petSitter.petsitterPhone}</td>
                    <td>${petSitter.petsitterAddress}</td>
                    <td>${petSitter.petsitterPrice}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>   
    <h1>펫시터 등급</h1>
    <table>
    <p>1등급 펫시터</p>
    <p>2등급 펫시터</p>
    <p>3등급 펫시터</p>
    </table>
    
</body>
</html>
