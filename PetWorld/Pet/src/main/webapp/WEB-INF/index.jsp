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
  line-height: 2.5;
  font-size: 1.5rem;
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
  top: 300px;
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



.s1 p {
margin-top: 100px;
}
.s2 p {
margin-top: 50px;
}
.s3 p {
margin-top: 50px;
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

<section id="sec1">
<div class="s1">
<h2>펫시터가 책임질게~</h2>
<P>여행이나 출장, 피치 못 할 사정 등으로
누군가의 보살핌이 필요할때! <br>
페팸 펫시터가 우리 아이들을 돌봐드려요</P>
</div>
<div class="dog1">
<img src = "img/개사진1.webp">
</div>
</section>

<section id="sec2">
<div class="s2">
<h2>개,고양이 전문 돌봄 사이트</h2>
<P>국내 최고의 서비스, 펫시터 최다보유 돌봄사이트!!</P><br>
<p></p>
</div>
<div class="dog2">
<img src = "img/개사진2.webp">
</div>
</section>

<section id="sec3">
<div class="s3">
<h2>믿고맡길수있는 검증된 펫시터</h2>
<p>철저한 신원 검증 <br>
자격증취득<br>
전문교육이수
</p>
</div>
<div class="good">
<img src = "img/화목한반려동물사진.webp">
</div>
</section>

</body>
</html>
