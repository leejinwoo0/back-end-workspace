<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>회원가입</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        // 중복 체크 함수
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

        // 실시간 유효성 검사
        function validateInput() {
            const name = $("#name").val();
            const password = $("#password").val();
            const id = $("#id").val(); 
            const nameRegex = /^[가-힣]{2,}$/; 
            const passwordRegex = /^(?=.*[a-z])[a-z]{4,}$/; 
            const idRegex = /^[a-zA-Z]+$/; 

            // 이름 유효성 검사
            if (nameRegex.test(name)) {
                $("#nameFeedback").text("성공!").css("color", "green");
            } else {
                $("#nameFeedback").text("이름은 한글로 2글자 이상 입력해야 합니다.").css("color", "red");
            }

            // 비밀번호 유효성 검사
            if (passwordRegex.test(password)) {
                $("#passwordFeedback").text("성공!").css("color", "green");
            } else {
                $("#passwordFeedback").text("비밀번호는 영문 소문자로 4글자 이상 입력해야 합니다.").css("color", "red");
            }

            // 아이디 유효성 검사
            if (idRegex.test(id)) {
                $("#idFeedback").text("아이디가 유효합니다.").css("color", "green");
            } else {
                $("#idFeedback").text("아이디는 영문자만 입력해야 합니다.").css("color", "red");
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
            margin: 0;
            padding-top: 200px;
            
        }
        h2 {
            color: #343a40;
            text-align: center;
        }
        .form-container {
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 15px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: auto;
            border: 3px solid black;
            height : 750px;
        }
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }
        input[type="text"],
        input[type="password"],
        input[type="email"] {
            width: 60%;
            padding: 10px; 
            margin-bottom: 15px;
            border: 1px solid black;
            border-radius: 4px;
            transition: border-color 0.3s;
            font-size: 0.9em; 
        }
        input[type="text"]:focus,
        input[type="password"]:focus,
        input[type="email"]:focus {
            border-color: #80bdff;
            outline: none;
        }
        button {
            background-color: black;
            color: white;
            font-size: 1rem;
            font-weight: bold;
            padding: 5px; 
            margin-bottom: 20px;
            margin-left: 150px;
            border: 1px solid black;
            border-radius: 4px;
            cursor: pointer;
            width: 30%;
            transition: background-color 0.3s;
            font-size: 0.8em; 
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
            display: block; 
            position: relative;
            margin-left: 30px 
           }
        p {
            text-align: center;
        }
        a {
            color: black;
            text-decoration: none;
            font-size: 1.5rem;
            font-weight: bold;
        }
        a:hover {
            text-decoration: none;
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
    <h2>회원가입</h2>

    <c:if test="${not empty errorMessage}">
        <div class="error">${errorMessage}</div>
    </c:if>

    <form action="${pageContext.request.contextPath}/signUp" method="post" onsubmit="return validateForm()">
        
        <div class=gg>
        <label for="name">이름</label>
        <input type="text" id="name" name="name" required oninput="validateInput()">
        </div>
        <span id="nameFeedback" class="feedback"></span>

        <div class=gg>
        <label for="id">아이디:</label>
        <input type="text" id="id" name="id" required oninput="validateInput()">
        </div>
        <button type="button" onclick="checkDuplicateId()">중복 체크</button>
        <span id="idFeedback" class="feedback"></span>
         
        <div class=gg>
        <label for="password">비밀번호</label>
        <input type="password" id="password" name="password" required oninput="validateInput()">
        </div>
        <span id="passwordFeedback" class="feedback"></span>

        <div class=gg>
        <label for="phone">전화번호</label>
        <input type="text" id="phone" name="phone" required>
        </div>
        
        <div class=gg>
        <label for="address">주소</label>
        <input type="text" id="address" name="address" required>
        </div>
        
        <div class=gg>
        <label for="email">이메일</label>
        <input type="email" id="email" name="email" required>
        </div>
        
         <div class=gg>
    			<label for="role">사용자 유형  </label>
    			<select id="role" name="role" required>
        			<option value="member">일반회원</option>
    			</select>
			</div>
        

        <button type="submit">가입하기</button>
    </form>

    <p>이미 계정이 있으신가요? <a href="${pageContext.request.contextPath}/login">로그인</a></p>
</div>

</body>
</html>
