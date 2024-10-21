<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reset.css">

<title>FAQ</title>
<style>
header {
  background-color: yellow;
  position: fixed;
  width: 100%;
  display: flex;
  justify-content: space-between;
  height: 100px;
  align-items: center;
  z-index: 1000;
}

header img {
 width: 100px; 
 height: 100px; 
 border-radius: 80%;
 margin-left: 50px;
 margin-top:20px;
}

header a {
  font-size: 2.3rem;
  font-weight: bold;
  margin-left: 50px;
}

header > * {
  width: 50%;
  display: flex;
}

header form {
  justify-content: center;
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
  font-size: 1.5rem;
  font-weight: bold;
  margin-bottom: 15px;
  justify-content: center;
  display: flex;
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
  padding: 0 18px;
  display: none; /* 초기에는 숨겨둠 */
  background-color: #f1f1f1;
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
  padding: 0 18px;
  display: none; /* 초기에는 숨겨둠 */
  background-color: #f1f1f1;
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
  padding: 0 18px;
  display: none; /* 초기에는 숨겨둠 */
  background-color: #f1f1f1;
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
  padding: 0 18px;
  display: none; /* 초기에는 숨겨둠 */
  background-color: #f1f1f1;
  overflow: hidden;
}

.main img {
      width: 400px; /* 이미지 너비를 300px로 설정 */
      height: 400px; /* 이미지의 비율을 유지 */
      border-radius: 80%;
     
}
</style>

</head>
<body>
<header>
  <a href="/index">PetWorld</a>
</header>
<section id="sec1">
<div class="main">
<img src ="img/mainlogo.webp">
</div>
  <h2 class="acc">펫월드는 어떤사이트인가요</h2> <!-- FAQ 제목 클릭 시 동작 -->
  <div class="panel">
    <p>펫월드는 '반려동물 종합 돌봄 전문 서비스'입니다.<br>
    까다롭게 선별되고 검증된 매니저가 우리 아이를 안전하고 세심하게 돌봐드려요!<br>
    반려동물 전문 펫시터 펫월드 매니저를 보다 쉽고, 편리하게 만나보세요!</p>
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
