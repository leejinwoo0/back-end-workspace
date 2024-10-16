<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel = "stylesheet" href="css/reset.css"/>
<title>Petworld</title>
<style>
header {
  background-color: white;
  position: fixed;
  width: 100%;
  display: flex;
  justify-content: space-between;
  height: 100px;
  /*line-height: 80px;*/
  align-items: center;
}

header a {
  font-size: 2rem; /* PetWorld의 글자 크기 */
  font-weight: bold; /* 필요에 따라 굵기 설정 */
  margin-left: 50px;
}

header nav a {
  font-size: 1rem; /* nav의 a 요소 글자 크기 */
  font-weight: normal; /* 필요에 따라 굵기 설정 */
}
header > * {
  width: 50%;
  display: flex;
}

header form {
  justify-content: center;
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
#sec1 {
  background-color: white;
  width: 100%;
  display: flex;
}
#sec2 {
  background-color: white;
}
#sec3 {
  background-color: white;
}
section h2 {
  font-size: 3rem;
  font-weight: bold;
  margin-bottom: 15px;
}
section p {
  line-height: 1.5;
}
.top {
  position: fixed;
  bottom: 10px;
  right: 10px;
  background-color: black;
  color: white;
  width: 50px;
  height: 50px;
  border-radius: 50%;
  display: flex;
  justify-content: center;
  align-items: center;
}

.dog1 img {
  width: 400px;
  height: 400px;
  margin-left: 700px;
}

.dog2 img {
  width: 400px;
  height: 400px;
  margin-right: 700px;
}

.good img {
  width: 400px;
  height: 400px;
  margin-left: 700px;
}

.s1 {
 margin-left: -700px;
 position: relative;
 top: 100px;
}

.s2 {
 margin-right : -700px;
 position: relative;
 top: 100px;
}

.s3 {
 margin-left : -700px;
 position: relative;
 top: 100px;
}






</style>
</head>
<body>
<header>

<a href="/index">PetWorld</a>

 <nav>
<a href= "/signUp">회원가입</a> 
<a href= "/chat">상담게시판</a> 
<a href= "/FAQ">FAQ</a>
<a href= "/review">리뷰</a>
<a href= "/petsitter">펫시터</a>
<a href= "/reservation">예약</a>
<a href= "/service">서비스 종류</a>  
 </nav>
</header>

<section id= sec1>
<div class="s1">
<h2>펫시터가 책임질게~</h2>
<P>asdasdasd</P>
</div>
<div class="dog1">
<img src = "img/개사진1.webp">
</div>
</section>

<section id= sec2>
<div class="s2">
<h2>개건고양이건 가져만와</h2>
<P>asdasdasd</P>
</div>
<div class = "dog2">
<img src = "img/개사진2.webp">
</div>
</section>

<section id= sec3>
<div class="s3">
<h2>행복하잖아~</h2>
<p>asdasdas</p>
</div>
<div class = "good">
<img src = "img/화목한반려동물사진.webp">
</div>
</section>




</body>
</html>