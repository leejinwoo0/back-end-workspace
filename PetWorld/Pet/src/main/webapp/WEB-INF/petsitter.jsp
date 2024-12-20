<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>펫시터</title>
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
            background-color: white;
            margin-left: 0px;

        }
        
        table {
            width: 70%;
            border-collapse: collapse;
            margin: 20px 0;
            background-color: white;
            margin-top: 50px;
            margin-left: 50px;
            border: 3px solid black;
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
        
        .ff {
        margin-top: 300px;
        margin-left: 50px;
        }
        
        .fff {
        margin-top: 200px;
        margin-left: 50px;
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
    <h1>펫시터 목록</h1>
    </div>
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
    
    <div class=fff>
    <h1>펫시터 등급</h1>
    </div> 
    <table>
    <thead>
            <tr>              
               <th>펫시터 등급</th>
               <th>펫시터 자격증 보유</th> 
               <th>펫월드 자체 훈련교육이수</th>
               <th>돌봄경력 </th>
                               
            </tr>
        </thead>    
        <tbody>
         <td>1등급 펫시터</td>  
         <td> O</td>
         <td>O</td>
         <td>3년이상</td>  
         
        </tbody>
        <tbody>
        <td>2등급 펫시터</td>
        <td>O</td>
         <td>O</td>
         <td>1년이상~3년이하</td>  
         
        </tbody>
        <tbody>
        <td>3등급 펫시터</td>
        <td>O</td>
         <td>O</td>
         <td>6개월이상~1년이하</td>  
         
        </tbody>
          
    </table>
    
</body>
</html>
