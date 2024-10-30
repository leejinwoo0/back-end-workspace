<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reset.css">

<style>
    /* 고정된 헤더 */
    header {
        position: fixed;
        width: 100%;
        display: flex;
        justify-content: space-between;
        height: 100px;
        align-items: center;
        z-index: 1000;
        background-color: white;
    }
    header a { font-size: 2.3rem; font-weight: bold; margin-left: 50px; }
    .div { width: 100%; height: 100px; }
    body { font-family: Arial, sans-serif; margin: 0; padding: 120px 20px 20px; background-color: #f4f4f4; }
    h1 { color: #333; }
    table { width: 100%; border-collapse: collapse; margin: 20px 0; }
    table, th, td { border: 1px solid #ddd; }
    th, td { padding: 12px; text-align: left; }
    tr:nth-child(even) { background-color: #f9f9f9; }
    tr:hover { background-color: #f1f1f1; }
    a { text-decoration: none; color: #007BFF; }
    a:hover { text-decoration: underline; }
</style>

<title>Reservation Management</title>
</head>
<body>

<header>
  <a href="${pageContext.request.contextPath}/index">PetWorld</a>
</header>

<div class="div"></div>
<a href="${pageContext.request.contextPath}/delete">회원탈퇴</a>

<div class="header">
    <h1>예약 목록</h1>
</div>

<table>
    <thead>
        <tr>
            <th>예약날짜</th>
            <th>돌봄시간</th>
            <th>돌봄요청펫수</th>
            <th>펫시터등급</th> 
            <th>목욕서비스</th>
            <th>산책서비스</th>
            <th>픽업서비스</th>
            <th>삭제</th>
        </tr>
    </thead>
    <tbody>
        <c:if test="${empty reservations}">
            <tr>
                <td colspan="9" style="text-align:center;">예약이 없습니다.</td>
            </tr>
        </c:if>
        <c:forEach var="reservation" items="${reservations}">
    <tr>
        <td>${reservation.date}</td>
        <td>${reservation.careTime}</td>
        <td>${reservation.petNum}</td>
        <td>${reservation.petsitter}</td>
        <td>${reservation.bathService ? 'Yes' : 'No'}</td>
        <td>${reservation.walkService ? 'Yes' : 'No'}</td>
        <td>${reservation.pickupService ? 'Yes' : 'No'}</td>
        
      
        <!-- 삭제 버튼 -->
        <td>
            <form action="${pageContext.request.contextPath}/reservation/delete/${reservation.id}" method="post" onsubmit="return confirm('예약을 삭제하시겠습니까?');">
                <input type="hidden" name="_method" value="delete">
                <button type="submit">삭제</button>
            </form>
        </td>
    </tr>
</c:forEach>
    </tbody>
</table>



</body>
</html>
