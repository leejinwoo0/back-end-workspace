<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reset.css">
<title>Chat</title>
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
  height: 100px; /* 로고 높이 설정 */
  margin-left: 20px; /* 로고 왼쪽 여백 */
}

section {
  display: flex;
  justify-content: space-between; /* 양쪽 정렬 */
  align-items: center; /* 수직 중앙 정렬 */
  padding: 20px; /* 패딩 추가 */
  height: 100vh; /* 섹션 높이 설정 */
}

section:nth-child(odd) {
  background-color: yellow; /* 홀수 섹션 흰색 배경 */
}

section:nth-child(even) {
  background-color: white; /* 짝수 섹션 노란색 배경 */
}

section h2 {
  font-size: 3rem;
  font-weight: bold;
  margin-bottom: 15px;
  line-height: 1.5;
  flex: 1; /* 글 영역 */
}

section p {
  font-size: 1.5rem;
  line-height: 1.5;
  flex: 1; /* 글 영역 */
}

.care img {
  width: 400px;
  height: 400px;
  margin-right: 200px;
}

.bath img {
  width: 400px;
  height: 400px;
  margin-right: 200px;
}

.walk img {
   width: 400px;
  height: 400px;
  margin-left: 300px;
}

.pickup img {
   width: 400px;
  height: 400px;
  margin-right: 300px;
}

.s1 {
  margin-left:200px;
}

.s2 p {
  font-size: 1.5rem;
  line-height: 1.5;
  margin-bottom: 15px; /* p 태그 간의 간격 추가 */
  flex: 1; /* 글 영역 */
  margin-left: 100px;
}

.s3 {
 margin-left: 300px;
}

.s4 {
 margin-right: 300px;
}

.s5 {
 margin-left :300px;
}

</style>
</head>
<body>
<header>
    <a href="/index">
        <img src="img/mainlogo.webp" alt="로고" /> <!-- 로고 이미지 추가 -->
    </a>
</header>

<section id="sec">
  <div class="s1">
    <h2>반려동물과 반려인 모두를 생각한 <br>
    1:1 맞춤 펫시팅 서비스</h2>
    <p>오랜시간 집을 비우거나 갑작스럽게 일이 생겼을 때,<br>
    우리 아이들이 걱정되셨나요?
    </p>
  </div>
  <div class ="care">
    <img src="img/케어.webp">
  </div>
</section>

<section id="sec2">
  <div class="s2" style="flex: 1;">
    <p>여행, 명절 등 장시간 집을 비울 때</p>
    <p>출장, 야근 등 갑자기 일이 생겼을 때</p>
    <p>집에 혼자 있는 시간이 많은 우리 아이들이 걱정될 때</p>
  </div>
  <div style="flex: 1;">
    <h2>반려동물 걱정은 No<br> 마음놓고 일상생활을 즐기세요</h2>
  </div>
</section>

<section id="sec3">
  <div class="s3">
    <h2>목욕</h2>
    <p>우리 아이가 목욕이 필요 할 경우, 목욕을 신청 할 수 있습니다</p>
  </div>
  <div class="bath">
  <img src="img/목욕.webp">
  </div>
</section>

<section id="sec4">
  <div class="walk">
  <img src="img/산책.webp">
  </div>
  <div class="s4">
    <h2>산책</h2>
    <p>펫시터와 함께 안전한 산책이 가능합니다
    </p>
  </div>
</section>

<section id="sec5">
  <div class="s5">
    <h2>픽업</h2>
    <p>고객님께서 이동이 불가피하실 경우 <br>
픽업 서비스를 이용 할 수 있습니다.</p>
  </div>
  <div class="pickup">
  <img src="img/픽업.webp">
  </div>
</section>
</body>
</html>
