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
    padding-top: 200px;
    background-color: white; 
    }
    
    h1 { 
    color: #333; 
    }
    
    table { 
    width: 70%;
    margin-left: 100px; 
    margin-top: 50px;
    border-collapse: collapse; 
    
    }
    
    table, th, td { 
    border: 1px solid black; 
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
    
    
    
     .del { 
    font-size: 2rem;
    font-weight: bold;
    margin-left: 100px;
    margin-top: 100px;
    }
    
    a { 
    text-decoration: none; 
    color: black; 
    }
    
    a:hover { 
    text-decoration: underline; 
    }
    
    .rrr {
    margin-top: 150px;
    margin-left: 100px;
    font-size: 2rem;
    font-weight: bold;
    color:black;
    }
</style>

<script>
    function confirmDelete() {
        return confirm("회원을 정말 탈퇴하시겠습니까?");
    }
</script>

<title>Reservation Management</title>
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

<div class="del">
    <a href="${pageContext.request.contextPath}/delete" onclick="return confirmDelete()">
        <p>회원탈퇴</p>
    </a>
</div>


<div class=rrr>
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
