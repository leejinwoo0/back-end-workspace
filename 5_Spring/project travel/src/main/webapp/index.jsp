<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>파리 올림픽 여행사</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/올림픽.css" />
  </head>
  <body>
    <header>
      <div class="container">
        <h1>파리 올림픽 여행사</h1>
        <nav>
          <ul>
            <li><a href="#packages">올림픽 패키지</a></li>
            <li><a href="#reviews">고객 후기</a></li>
            <li><a href="#blog">블로그</a></li>
            <li><a href="#contact">문의</a></li>
          </ul>
        </nav>
      </div>
    </header>

    <section class="main-banner">
      <div class="container">
        <h2>2024 파리 올림픽과 함께하는 특별한 여행</h2>
        <p>최고의 패키지로 최고의 경험을 제공합니다.</p>
        <a href="#packages" class="btn">패키지 보기</a>
      </div>
    </section>

    <section id="packages" class="packages">
      <div class="container">
        <h2>올림픽 패키지</h2>
        <div class="package-list">
          <div class="package-item">
            <h3>골드 패키지</h3>
            <p>최고급 호텔과 VIP 관람석 제공</p>
            <a href="#" class="btn">자세히 보기</a>
          </div>
          <div class="package-item">
            <h3>실버 패키지</h3>
            <p>중급 호텔과 일반 관람석 제공</p>
            <a href="#" class="btn">자세히 보기</a>
          </div>
          <div class="package-item">
            <h3>브론즈 패키지</h3>
            <p>경제적인 호텔과 기본 관람석 제공</p>
            <a href="#" class="btn">자세히 보기</a>
          </div>
        </div>
      </div>
    </section>

    <section id="reviews" class="reviews">
      <div class="container">
        <h2>고객 후기</h2>
        <div class="review-list">
          <div class="review-item">
            <p>"정말 멋진 경험이었어요! 최고의 서비스였습니다."</p>
            <h4>- 김철수</h4>
          </div>
          <div class="review-item">
            <p>
              "여행 일정이 완벽하게 짜여져 있어서 편하게 즐길 수 있었습니다."
            </p>
            <h4>- 이영희</h4>
          </div>
        </div>
      </div>
    </section>

    <section id="blog" class="blog">
      <div class="container">
        <h2>블로그 및 뉴스</h2>
        <div class="blog-list">
          <div class="blog-item">
            <h3>파리에서 즐길 수 있는 10가지 활동</h3>
            <p>파리에서 올림픽 외에도 즐길 수 있는 다양한 활동을 소개합니다.</p>
            <a href="#" class="btn">자세히 보기</a>
          </div>
          <div class="blog-item">
            <h3>2024 파리 올림픽 주요 경기 일정</h3>
            <p>올림픽 주요 경기 일정을 안내해 드립니다.</p>
            <a href="#" class="btn">자세히 보기</a>
          </div>
        </div>
      </div>
    </section>

    <section id="contact" class="contact">
      <div class="container">
        <h2>문의하기</h2>
        <form action="#" method="post">
          <label for="name">이름</label>
          <input type="text" id="name" name="name" required />

          <label for="email">이메일</label>
          <input type="email" id="email" name="email" required />

          <label for="message">메시지</label>
          <textarea id="message" name="message" required></textarea>

          <button type="submit" class="btn">보내기</button>
        </form>
      </div>
    </section>

    <footer>
      <div class="container">
        <p>&copy; 2024 파리 올림픽 여행사. 모든 권리 보유.</p>
      </div>
    </footer>
  </body>
</html>