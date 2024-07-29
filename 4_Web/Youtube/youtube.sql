-- 회원 정보
CREATE TABLE memberinformation (
    member_code INT PRIMARY KEY AUTO_INCREMENT,
    id VARCHAR(50),
    password VARCHAR(50),
    name VARCHAR(50),
    phone VARCHAR(50)
);

-- 리뷰 (평점)
CREATE TABLE review (
    review_code INT PRIMARY KEY AUTO_INCREMENT,
    package_review VARCHAR(100),
    review_date CHAR(30),
    member_code INT,
    payment_amount_code INT,
    FOREIGN KEY (member_code) REFERENCES memberinformation (member_code),
    FOREIGN KEY (payment_amount_code) REFERENCES payment_amount (payment_amount_code)
);
-- 질문게시판
CREATE TABLE question_table (
    question_code INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50),
    qna VARCHAR(100),
    member_code INT,
    FOREIGN KEY (member_code) REFERENCES memberinformation (member_code)
);
