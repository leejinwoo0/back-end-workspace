// 아이디 중복 체크 함수
function checkUsername() {
    const username = document.getElementById('username').value;
    const message = document.getElementById('usernameMessage');
    const regex = /^[a-zA-Z0-9]{6,20}$/; // 영문자 및 숫자로 6~20자

    if (!regex.test(username)) {
        message.textContent = "아이디는 6~20자의 영문자와 숫자여야 합니다.";
        return false;
    }

    // 서버에 중복 체크 요청 (여기서는 예시로 true를 반환)
    // 실제로는 AJAX를 통해 서버에 요청해야 합니다.
    const isDuplicate = false; // 예시로 중복 여부를 false로 설정

    if (isDuplicate) {
        message.textContent = "이미 사용중인 아이디입니다.";
        return false;
    }

    message.textContent = "사용 가능한 아이디입니다.";
    return true;
}

// 폼 검증 함수
function validateForm() {
    if (!checkUsername()) {
        return false;
    }

    const password = document.getElementById('password').value;
    if (password.length < 4) {
        alert("비밀번호는 4자리 이상이어야 합니다.");
        return false;
    }

    return true;
}

// 아이디 입력 시 중복 체크
document.getElementById('username').addEventListener('blur', checkUsername);
