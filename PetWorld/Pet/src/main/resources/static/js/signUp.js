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
                document.getElementById("usernameCheck").style.color = "green";
            } else {
                document.getElementById("usernameCheck").innerText = "이미 사용 중인 아이디입니다.";
                document.getElementById("usernameCheck").style.color = "red";
            }
        }
    };
    xhr.send();
}

// 폼 유효성 검사 함수
function validateForm() {
    var name = document.getElementById("name").value;
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;
    var phone = document.getElementById("phone").value;
    var email = document.getElementById("email").value;
    var address = document.getElementById("address").value;

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

    // 전화번호 유효성 체크 (숫자 10~11자리)
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
