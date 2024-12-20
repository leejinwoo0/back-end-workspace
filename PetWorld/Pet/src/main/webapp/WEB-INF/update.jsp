<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>회원 정보 수정</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
    function checkDuplicateId() {
        var id = $("#id").val();
        if (id) {
            const idRegex = /^[a-zA-Z]+$/; // 영문자만
            if (!idRegex.test(id)) {
                $("#idFeedback").text("아이디는 영문자만 입력해야 합니다.").css("color", "red");
                return;
            }

            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/check",
                data: { id: id },
                success: function(response) {
                    if (response) {
                        $("#idFeedback").text("사용 가능한 아이디입니다.").css("color", "green");
                    } else {
                        $("#idFeedback").text("이미 사용 중인 아이디입니다.").css("color", "red");
                    }
                },
                error: function() {
                    $("#idFeedback").text("중복 체크에 실패했습니다.").css("color", "red");
                }
            });
        } else {
            alert("아이디를 입력해주세요.");
        }
    }
    </script>
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
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: white;
            padding-top: 200px;
            margin: 0;
            
        }
        .form-container {
            background: white;
            padding: 30px;
            border: 3px solid black;
            border-radius: 8px;
            box-shadow: 0 2px 15px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: auto;
        }
        h2 {
            text-align: center;
            color: #343a40;
        }
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }
        input[type="text"],
        input[type="password"],
        input[type="email"] {
            width: 50%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid black;
            border-radius: 4px;
        }
        button {
            background-color: black;
            color: white;
            padding: 5px;
            border: 1px solid black;
            border-radius: 4px;
            cursor: pointer;
            width: 30%;
            margin-bottom: 20px;
            margin-left: 150px;
        }
        button:hover {
            background-color: #0056b3;
        }
        .error {
            color: red;
            margin-bottom: 15px;
        }
        .feedback {
            margin-top: -10px;
            margin-bottom: 15px;
            font-size: 0.9em;
        }
        
               .gg {
        display: flex; 
        align-items: center; 
        margin-bottom: 15px; 
        margin-left: -70px;
    }

       .gg label {
        width: 30%;
        font-weight: bold;
        margin-right: 10px; 
        text-align: right; 
    }
    </style>
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


<div class="form-container">
    <h2>회원 정보 수정</h2>

    <c:if test="${not empty errorMessage}">
        <div class="error">${errorMessage}</div>
    </c:if>

    <form action="${pageContext.request.contextPath}/mypage/update" method="post">
      
        <div class=gg>
        <label for="name">이름</label>
        <input type="text" id="name" name="name" value="${member.name}" required>
        </div>
        
        <div class=gg>
        <label for="password">비밀번호</label>
        <input type="password" id="password" name="password" required >
        </div>
        
        <div class=gg>
        <label for="phone">전화번호</label>
        <input type="text" id="phone" name="phone" value="${member.phone}" required>
        </div>
        
        <div class=gg>
        <label for="address">주소</label>
        <input type="text" id="address" name="address" value="${member.address}" required>
        </div>

        <div class=gg>
        <label for="email">이메일</label>
        <input type="email" id="email" name="email" value="${member.email}" required>
        </div>

        <button type="submit">정보 수정</button>
    </form>
</div>

</body>
</html>
