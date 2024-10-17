const name = document.querySelector("#name");
const nameSpan = document.querySelector("#nameSpan");
const id = document.querySelector("#id");
const idSpan = document.querySelector("#idSpan");
const password= document.querySelector("#password");
const passwordSpan = document.querySelector("#passwordSpan");
const passwordCheck = document.querySelector("#passwordCheck");
const passwordCheckSpan = document.querySelector("#passwordCheckSpan");
const emailtx = document.querySelector("#emailDomain");
const phone1 = document.querySelector("#phone1");
const phone2 = document.querySelector("#phone2");
const phone2Span = document.querySelector("#phoneSpan");
const emailUser = document.querySelector("#emailUser");
const emailDomain = document.querySelector("#emailDomain");
const domainList = document.querySelector("#domainList");
const emailForm = document.getElementById('emailForm');
const email = document.getElementById('email');
const phone = document.getElementById("phone");

name.addEventListener("input", function (e) {
  const regExp = /^[가-힣]{2,}$/;
  const check = regExp.test(name.value);
  if (check) {
    nameSpan.style.color = "green";
    nameSpan.innerHTML = "확인되었습니다.";
  } else {
    nameSpan.style.color = "red";
    nameSpan.innerHTML =
      "한글로만 이루어져야되며 2글자 이상으로 입력하시오.";
	  isValid= false;
  }
});

id.addEventListener("input", function (e) {
  const regExp = /^(?=.*[a-z])(?=.*[0-9])[A-Za-z0-9]{6,20}$/;
  const check = regExp.test(id.value);
  // 아이디가 유효한 형식일 경우
  if (check) {
    idSpan.style.color = "red";
    idSpan.innerHTML = "중복확인을 해주세요";
  } else if (id.value.length >= 6) {
    idSpan.style.color = "red";
    idSpan.innerHTML = "6~20자 이상의 영문 소문자, 숫자 사용해주세요.";
}
});

$(document).ready(function() {
    // 중복체크 버튼을 눌렀을 때
    $("#idButton").click(() => {
        const idValue = $("#id").val();
        // 빈 값일 경우 처리
        if (!idValue) {
            alert("아이디를 입력해주세요.");
            return;
        }
        // AJAX 요청
        $.ajax({
            type: 'POST',
            url: '/check', // 서버에 요청 보낼 URL
            data: { id: idValue }, // 요청 데이터
            success: function(result) {
                if (result) {
                    $("#idSpan").text("이미 사용 중인 아이디입니다.").css("color", "red");
                } else {
                    $("#idSpan").text("사용 가능한 아이디입니다.").css("color", "green");
                }
            },
            error: function() {
                alert("아이디 중복 체크 중 오류가 발생했습니다.");
            }
        });
    });
});

password.addEventListener("input", function (e) {
  const regExp =
    /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[!@#$%^&*])[A-Za-z\d!@#$%^&*]{8,16}$/;
  const check = regExp.test(password.value);
  if (check) {
    passwordSpan.style.color = "green";
    passwordSpan.innerHTML = "확인되었습니다";
  } else {
    passwordSpan.style.color = "red";
    passwordSpan.innerHTML =
      "8 ~ 16자의 영문 대/소문자, 숫자, 특수문자 한개 이상 사용해주세요.";
  }
});

passwordCheck.addEventListener("input", function (e) {
  if (password.value === passwordCheck.value) {
    passwordCheckSpan.style.color = "green";
    passwordCheckSpan.innerHTML = "비밀번호가 일치합니다!";
  } else {
    passwordCheckSpan.style.color = "red";
    passwordCheckSpan.innerHTML = "위의 비밀번호와 일치하게 입력하시오.";
  }
});

phone2.addEventListener("input", function (e) {
  const regExp = /^\d{8}$/;
  const check = regExp.test(phone2.value);
  if (check) {
    phone2Span.style.color = "green";
    phone2Span.innerHTML = "확인되었습니다.";
  } else {
    phone2Span.style.color = "red";
    phone2Span.innerHTML = "올바른 번호를 입력하세요.";
  }
});

function Validation(event) {
    let isValid = true;  // 모든 입력이 유효한지 확인할 플래그 변수
    // 이름 유효성 검사
    const regExpname = /^[가-힣]{2,}$/;
    if (!regExpname.test(name.value.trim())) {
        nameSpan.style.color = "red";
        nameSpan.innerHTML = "한글로만 이루어져야 하며 2글자 이상 입력해야 합니다.";
        isValid = false;
    } else {
        nameSpan.innerHTML = ""; // 오류 없을 시 메시지 초기화
    }
    // 아이디 유효성 검사
    const regExpid = /^(?=.*[a-z])(?=.*[0-9])[A-Za-z0-9]{6,20}$/;
    if (!regExpid.test(id.value.trim())) {
        idSpan.style.color = "red";
        idSpan.innerHTML = "아이디는 영문 소문자와 숫자를 포함한 6~20자여야 합니다.";
        isValid = false;
    } else {
        idSpan.innerHTML = ""; // 오류 없을 시 메시지 초기화
    }
    // 비밀번호 유효성 검사
    const regExpPwd = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[!@#$%^&*])[A-Za-z\d!@#$%^&*]{8,16}$/;
    if (!regExpPwd.test(password.value.trim())) {
        passwordSpan.style.color = "red";
        passwordSpan.innerHTML = "비밀번호는 8~16자, 영문, 숫자, 특수문자가 포함되어야 합니다.";
        isValid = false;
    } else {
        passwordSpan.innerHTML = ""; // 오류 없을 시 메시지 초기화
    }
    // 비밀번호 확인 검사
    if (password.value.trim() !== passwordCheck.value.trim()) {
        passwordCheckSpan.style.color = "red";
        passwordCheckSpan.innerHTML = "비밀번호가 일치하지 않습니다.";
        isValid = false;
    } else {
        passwordCheckSpan.innerHTML = ""; // 오류 없을 시 메시지 초기화
    }

    // 휴대폰 번호 유효성 검사
    const regExpPhone = /^\d{8}$/;  // 8자리 숫자
    if (!regExpPhone.test(phone2.value.trim())) {
        phone2Span.style.color = "red";
        phone2Span.innerHTML = "올바른 번호를 입력하세요.";
        isValid = false;
    } else {
        phone2Span.innerHTML = ""; // 오류 없을 시 메시지 초기화
		
    }const completePhone = phone1.value + phone2.value;
	phone.value= completePhone;
	
	console.log(phone);
			
    // 유효하지 않으면 폼 제출 중지
    if (!isValid) {
        event.preventDefault();  // 폼 제출 방지
    }
}
// 도메인 리스트가 변경될 때 처리
  domainList.addEventListener("change", (event) => {
      if (event.target.value === "type") {
          // 사용자가 도메인을 직접 입력할 수 있도록 설정
          emailDomain.value = "";
          emailDomain.disabled = false;
          emailDomain.focus();
      } else {
          // 선택한 도메인으로 설정하고 입력을 막음
          emailDomain.value = event.target.value;
          emailDomain.disabled = true;
      }
      // 이메일 주소 합치기
      const completeEmail = emailUser.value + '@' + emailDomain.value;
      email.value = completeEmail;
      console.log(email);
	 });