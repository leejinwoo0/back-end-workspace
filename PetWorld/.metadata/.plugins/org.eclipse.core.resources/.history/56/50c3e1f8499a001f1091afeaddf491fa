<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 관리</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
    /* 기본 스타일 */
    body {
        font-family: Arial, sans-serif;
        background-color: #f8f9fa;
        padding: 20px;
    }

    h1 {
        color: #333;
        text-align: center;
    }

    .container {
        max-width: 800px;
        margin: 0 auto;
    }

    .form-container {
        margin-bottom: 20px;
        padding: 20px;
        background-color: #fff;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
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
        background-color: #28a745;
        color: white;
        cursor: pointer;
        margin-top: 10px;
    }

    .form-container button:hover {
        background-color: #218838;
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
