<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reset.css">

<title>FAQ</title>
<style>
header {
  background-color: white;
  position: fixed;
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
 margin-top:10px;
}

header a {
  font-size: 2.3rem; /* PetWorld의 글자 크기 */
  font-weight: bold; /* 필요에 따라 굵기 설정 */
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
  font-size: 1rem; /* nav의 a 요소 글자 크기 */
  font-weight: bold; 
  display: flex;
  align-items: center;
  padding: 10px;
}
header nav a:hover {
  background-color: black;
  color: white;
}

section {
  height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
  text-align: center;
}


section h2 {
  font-size: 3rem;
  font-weight: bold;
  margin-bottom: 15px;
  justify-content: center;
  display: flex;
}

section p {
font-size: 1.3rem;
font-weight: bold;
padding: 100px;
line-height: 2;
background-color: #f1f1f1;
overflow: hidden;
}


.main {
height: 100%;
      margin-top: 200px;
      display: flex;
      justify-content: center; /* 수평 가운데 정렬 */
      align-items: center;    /* 수직 가운데 정렬 */
}

.acc {
  cursor: pointer;
  padding: 10px;
  width: 100%;
  text-align: left;
  border: none;
  outline: none;
  transition: 0.4s;
}

.panel {

  display: none; 
  overflow: hidden;

}

.acc2 {
  cursor: pointer;
  padding: 10px;
  width: 100%;
  text-align: left;
  border: none;
  outline: none;
  transition: 0.4s;
}

.panel2 {

  display: none; /* 초기에는 숨겨둠 */
  overflow: hidden;
}

.acc3 {
  cursor: pointer;
  padding: 10px;
  width: 100%;
  text-align: left;
  border: none;
  outline: none;
  transition: 0.4s;
}

.panel3 {

  display: none; /* 초기에는 숨겨둠 */
  overflow: hidden;
}

.acc4 {
  cursor: pointer;
  padding: 10px;
  width: 100%;
  text-align: left;
  border: none;
  outline: none;
  transition: 0.4s;
}

.panel4 {

  display: none; /* 초기에는 숨겨둠 */
  overflow: hidden;
}

.main img {
      width: 600px; 
      height: 600px; 
      
     

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

<section id="sec">
<div class="main">
<img src ="img/놀이.webp">
</section>

<section id="sec1">
</div>
  <h2 class="acc">펫월드는 어떤사이트인가요</h2> <!-- FAQ 제목 클릭 시 동작 -->
  <div class="panel">
    <p>
    펫월드는 '반려동물 종합 돌봄 전문 서비스'입니다.<br>
    까다롭게 선별되고 검증된 매니저가 우리 아이를 안전하고 세심하게 돌봐드려요!<br>
    반려동물 전문 펫시터 펫월드 매니저를 보다 쉽고, 편리하게 만나보세요!
    </p>
  </div>
</section>

<section id="sec2">
<h2 class="acc2">반려동물 서비스에는 어떤것들이있나요?</h2>
<div class="panel2">
<p>
펫월드에서 준비한 반려동물 돌봄 서비스로는 '방문돌봄','방문산책','픽업서비스'등이있 있습니다.<br>
저희는 반려동물과 함께 살아가는 생활속에서 좀더 편리하고 도움이 될수있는 서비스를 제공하기위해<br>
끊임없이 노력하고있습니다.
</p>
</div>
</section>

<section id="sec3">
  <h2 class="acc3">서비스 가능지역은 어디인가요?</h2>
  <div class="panel3">
  <p>
  저희 펫월드는 전국8도와 7개의 광역시 및 특별시 전부서비스 운영중입니다.<br>
  다만 울릉도 및 다른 섬지역은 지속적으로 서비스 업데이트중입니다.
  </p>
  </div>
</section>

<section id="sec4">
<h2 class="acc4">펫시터는 어떤 분들인가요?</h2>
<div class="panel4">
<p>
펫월드에서 신원확인을 마치고 서비스교육을 이수한 매니저님이 보호자님 댁으로 방문하게 됩니다.<br>
.반려동물 돌봄 경력자 <br>
.반려동물 돌봄 전문가 교육 이수자 <br>
.관련 자격증 보유자 및 관련 업종 경력자 등 <br>
반려견 기본 케어가 가능하다 판단되는 내부기준,조건 을 충족한 매니저가 더욱나은 경험을제공해드릴예정입니다.
</p>
</div>
</section>
<script>
  var faqHeader = document.querySelector(".acc");
  var panel = document.querySelector(".panel");
  var faq2Header = document.querySelector(".acc2");
  var panel2 = document.querySelector(".panel2");
  var faq3Header = document.querySelector(".acc3");
  var panel3 = document.querySelector(".panel3");
  var faq4Header = document.querySelector(".acc4");
  var panel4 = document.querySelector(".panel4");

  faqHeader.addEventListener("click", function() {
      // 패널의 display를 토글
      if (panel.style.display === "block") {
          panel.style.display = "none";
      } else {
          panel.style.display = "block";
      }
  });
  
  faq2Header.addEventListener("click", function() {
      // 패널의 display를 토글
      if (panel2.style.display === "block") {
          panel2.style.display = "none";
      } else {
          panel2.style.display = "block";
      }
  });
  
  faq3Header.addEventListener("click", function() {
      // 패널의 display를 토글
      if (panel3.style.display === "block") {
          panel3.style.display = "none";
      } else {
          panel3.style.display = "block";
      }
  });
  
  faq4Header.addEventListener("click", function() {
      // 패널의 display를 토글
      if (panel4.style.display === "block") {
          panel4.style.display = "none";
      } else {
          panel4.style.display = "block";
      }
  });
  
</script>

</body>
</html>
