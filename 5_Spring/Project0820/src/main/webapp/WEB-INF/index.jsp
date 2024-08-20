<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Paris</title>
<link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/Sunflower.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/Paris.css" rel="stylesheet">

   <!-- 폰트어썸폴더 -->
<script src="https://kit.fontawesome.com/071562b1d0.js" crossorigin="anonymous"></script> 
    <!-- 구글 폰트-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>


</head>
<header id="header">
	<div class="paris-font">
		<a href="#" id="KHTRAVLE">KHTRAVEL</a>
	</div>
	<div>
		<a href="<%= request.getContextPath() %>/login" id="login">로그인</a>
		<a href="<%= request.getContextPath() %>/signUp" id="sign">회원가입</a>
	</div>
	<ul class="menu">
      <li>
        <a href="#">☰</a>
        <ul class="submenu">
          <li><a href="<%= request.getContextPath() %>/login">로그인</a></li>
          <li><a href="<%= request.getContextPath() %>/mypage">마이페이지</a></li>
          <li><a href="#">관광지</a></li>
          <li><a href="#">굿즈</a></li>
          <li><a href="#">submenu05</a></li>
        </ul>
      </li>
    </ul>
</header>  
<body style="overflow: hidden" id="body">
 <section id="mainpage">
        <div id="Binggrae_font">
        <h2 class="paris-font">KHTRAVEL</h2>
        <br><br><br><br>
      <div id="inputmain">
    </div>
    </div>
</section>
     <!-- SCRIPTS -->
    <script src="${pageContext.request.contextPath}/js/index.js"></script>
</body>
</html>
