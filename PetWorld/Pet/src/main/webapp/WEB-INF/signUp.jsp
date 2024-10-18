<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>signUp</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        form {
            background-color: #fff;
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
            color: #555;
        }

        input[type="text"], input[type="password"], input[type="email"] {
            width: calc(100% - 12px);
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-sizing: border-box;
        }

        button, #usernameCheckBtn {
            background-color: #4CAF50;
            color: white;
            padding: 10px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
        }

        button:hover, #usernameCheckBtn:hover {
            background-color: #45a049;
        }

        #usernameCheckBtn {
            width: 100px;
            margin-left: 10px;
            margin-top: -20px;
        }

        #usernameWrapper {
            display: flex;
            align-items: center;
        }

        span {
            color: red;
            font-size: 12px;
        }

        .info {
            margin-bottom: 20px;
        }

    </style>
    <script>
        // 아이디 중복 확인 함수
        function checkUsername() {
            var username = document.getElementById("username").value;

            if (username.length < 6 || username.length > 20) {
                document.getElementById("usernameCheck").innerText = "아이디는 영문자 6~20자리를 입력해주세요.";
                return false;
            }

            // 서버와의 중복 체크 예시 (AJAX 사용)
            var xhr = new XMLHttpRequest();
            xhr.open("GET", "checkUsername?username=" + username, true);
            xhr.onreadystatechange = function() {
                if (xhr.readyState == 4 && xhr.status == 200) {
                    if (xhr.responseText === "available") {
                        document.getElementById("usernameCheck").innerText = "사용 가능한 아이디입니다.";
                    } else {
                        document.getElementById("usernameCheck").innerText = "이미 사용 중인 아이디입니다.";
                    }
                }
            };
            xhr.send();
        }

        // 폼 유효성 검사 함수
        function validateForm() {
            var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;
            var phone = document.getElementById("phone").value;
            var email = document.getElementById("email").value;
            var address = document.getElementById("address").value;
            var name = document.getElementById("name").value;

            // 이름이 비어있는지 확인
            if (name.trim() === "") {
                alert("이름을 입력해주세요.");
                return false;
            }

            // 아이디 체크 (영문자 6~20자리)
            var usernameRegex = /^[a-zA-Z]{6,20}$/;
            if (!usernameRegex.test(username)) {
                alert("아이디는 영문자 6~20자리여야 합니다.");
                return false;
            }

            // 비밀번호 체크 (영문자 4자리 이상)
            if (password.length < 4) {
                alert("비밀번호는 4자리 이상이어야 합니다.");
                return false;
            }

            // 전화번호 유효성 체크
            var phoneRegex = /^\d{10,11}$/;
            if (!phoneRegex.test(phone)) {
                alert("전화번호는 숫자 10~11자리를 입력해주세요.");
                return false;
            }

            // 이메일 유효성 체크
            var emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;
            if (!emailRegex.test(email)) {
                alert("유효한 이메일을 입력해주세요.");
                return false;
            }

            // 주소가 비어있는지 확인
            if (address.trim() === "") {
                alert("주소를 입력해주세요.");
                return false;
            }

            return true; // 폼이 유효하면 제출 진행
        }
    </script>
</head>
<body>
    <h1>회원가입</h1>
    <form name="signupForm" action="submitSignup" method="post" onsubmit="return validateForm()">
        <div class="info">
            <label for="name">이름: </label>
            <input type="text" id="name" name="name" required>
        </div>

        <div class="info" id="usernameWrapper">
            <label for="username">아이디 (영문자 6~20자리): </label>
            <input type="text" id="username" name="username" required>
            <button type="button" id="usernameCheckBtn" onclick="checkUsername()">중복체크</button>
        </div>
        <span id="usernameCheck"></span>

        <div class="info">
            <label for="password">비밀번호 (영문자 4자리 이상): </label>
            <input type="password" id="password" name="password" required>
        </div>

        <div class="info">
            <label for="phone">전화번호: </label>
            <input type="text" id="phone" name="phone" required>
        </div>

        <div class="info">
            <label for="email">이메일: </label>
            <input type="email" id="email" name="email" required>
        </div>

        <div class="info">
            <label for="address">주소: </label>
            <input type="text" id="address" name="address" required>
        </div>

        <button type="submit">가입하기</button>
    </form>
</body>
</html>
