<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 관리</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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

    }

    h1 {
        color: #333;
        text-align: center;
    }

    .container {
        max-width: 800px;
        margin-top: 200px;
        margin-left: 550px;
    }

    .form-container {
        margin-bottom: 20px;
        padding: 20px;
        border-radius: 8px;
        border: 3px solid black;
    }

    .form-container input,
    .form-container select {
        width: calc(50% - 10px);
        margin-bottom: 10px;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    .form-container button {
        padding: 10px 15px;
        border: none;
        border-radius: 4px;
        background-color: black;
        color: white;
        cursor: pointer;
        margin-top: 10px;
        margin-left: 50px;
    }

    .form-container button:hover {
        background-color: #0056b3;
    }
</style>
<script>
    $(document).ready(function() {
        // 예약 추가 폼 제출
        $('#addReservationForm').on('submit', function(event) {
            event.preventDefault(); // 기본 폼 제출 방지

            var formData = $(this).serialize(); // 폼 데이터 직렬화

            $.post('${pageContext.request.contextPath}/reservation/add', formData)
                .done(function(response) {
                    // 예약 추가 성공 시 마이페이지로 리디렉션
                    window.location.href = '${pageContext.request.contextPath}/reservation/mypage';
                })
                .fail(function(jqXHR) {
                    // 예약 추가 실패 시 에러 메시지 출력
                    alert('예약 추가 실패: ' + jqXHR.responseText);
                });
        });
    });
</script>
</head>
<body>

<header>
    <a href="/index">
        <img src="img/mainlogo.webp">
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


    <div class="container">
        <h1>예약 관리</h1>
        <c:if test="${not empty errorMessage}">
            <div class="error">${errorMessage}</div>
        </c:if>

        <!-- 예약 추가 폼 -->
        <div class="form-container">
            <h3>예약 추가</h3>
            <form id="addReservationForm" action="${pageContext.request.contextPath}/reservation/add" method="post">
                
                
                <input type="date" id="date" name="date" required>
                <label for="date">예약 날짜</label>
                
                <select name="careTime" id="careTime" required>
                    <option value="" selected disabled>필수선택</option>
                    <option value="1">1시간</option>
                    <option value="3">3시간</option>
                    <option value="6">6시간</option>
                    <option value="24">하루</option>
                    <option value="48">2일이상</option>
                </select>
                <label for="careTime">돌봄시간</label>
                
                
                <select name="petNum" id="petNum" required>
                    <option value="" selected disabled>필수선택</option>
                    <option value="1">1마리</option>
                    <option value="2">2마리</option>
                    <option value="3">3마리</option>
                    <option value="4">4마리</option>
                    <option value="0">5마리 이상</option>
                </select>
                <label for="petNum">돌봄 요청 펫 수</label>
                
               
                <select name="petsitter" id="petsitter" required>
                    <option value="" selected disabled>필수선택</option>
                    <option value="1">1등급</option>
                    <option value="2">2등급</option>
                    <option value="3">3등급</option>
                </select>
                <label for="petsitter">펫시터 등급</label>
                
                
                <select name="bathService" id="bathService">
                    <option value="true">Yes</option>
                    <option value="false" selected>No</option>
                </select>
                <label for="bathService">목욕 서비스</label>
                
                
                <select name="walkService" id="walkService">
                    <option value="true">Yes</option>
                    <option value="false" selected>No</option>
                </select>
                <label for="walkService">산책 서비스</label>
               
                <select name="pickupService" id="pickupService">
                    <option value="true">Yes</option>
                    <option value="false" selected>No</option>
                </select>
                <label for="pickupService">픽업 서비스</label>
                
                <button type="submit">예약</button>
            </form>
        </div>
    </div>
</body>
</html>
