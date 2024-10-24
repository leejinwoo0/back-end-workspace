<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/reset.css">

<title>Petworld</title>
<style>
header {
  background-color: white;
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
  font-size: 2.3rem; /* PetWorld의 글자 크기 */
  font-weight: bold; /* 필요에 따라 굵기 설정 */
  margin-left: 10px;
}

header nav a {
  font-size: 1rem; /* nav의 a 요소 글자 크기 */
  font-weight: bold; 
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
}
section p {
  line-height: 1.5;
}

.dog1 img{
  width: 400px;
  height: 400px;
  margin-left: 600px;
}


.dog2 img{
  width: 400px;
  height: 400px;
  margin-right:600px;
}


.good img {
  width: 400px;
  height: 400px;
  margin-left: 600px;
}

.s1, .s2, .s3 {
  position: relative;
  top: 100px;
}
.s1 {
  margin-left: -700px;
}
.s2 {
  margin-right: -700px;
}
.s3 {
  margin-left: -700px;
}
</style>
</head>
<body>
<header>
 <img src="img/mainlogo.webp">
    <a href="/index">PetWorld</a>
    <nav>
        <c:choose>
            <c:when test="${not empty sessionScope.userId}">
                <a href="/logout">로그아웃</a>
                <a href="/update">회원정보수정</a>
                <a href="/mypage">마이페이지</a>
                <a href="/reservation">예약</a>
            </c:when>
            <c:otherwise>
                <a href="/signUp">회원가입</a> 
                <a href="/login">로그인</a>
            </c:otherwise>
        </c:choose>
        <a href="/chat">상담게시판</a> 
        <a href="/FAQ">FAQ</a>
        <a href="<c:url value='/reviews/list'/>">리뷰</a>
        <a href="/petsitter/list">펫시터</a>
        <a href="/service">서비스 종류</a>  
    </nav>
</header>

<section id="sec1">
<div class="s1">
<h2>펫시터가 책임질게~</h2>
<P>asdasdasd</P>
</div>
<div class="dog1">
<img src = "img/개사진1.webp">
</div>
</section>

<section id="sec2">
<div class="s2">
<h2>개건고양이건 가져만와</h2>
<P>asdasdasd</P>
</div>
<div class="dog2">
<img src = "img/개사진2.webp">
</div>
</section>

<section id="sec3">
<div class="s3">
<h2>행복하잖아~</h2>
<p>asdasdas</p>
</div>
<div class="good">
<img src = "img/화목한반려동물사진.webp">
</div>
</section>

</body>
</html>
