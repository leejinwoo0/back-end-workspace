DROP TABLE stadium_res;
DROP TABLE theme_park_res;
DROP TABLE goods;
DROP TABLE rest_res;
DROP TABLE review;
DROP TABLE accom_res;
DROP TABLE pmt_amt;
DROP TABLE question_table;
DROP TABLE mem_info;
DROP TABLE stadium;
DROP TABLE theme_park;
DROP TABLE rest;
DROP TABLE rest_class;
DROP TABLE accom;
DROP TABLE accom_class;

-- 회원 정보
CREATE TABLE mem_info (
    mem_code INT PRIMARY KEY AUTO_INCREMENT,
    id VARCHAR(50),
    password VARCHAR(50),
    name VARCHAR(50),
    phone VARCHAR(15)
);

-- 지불금액
CREATE TABLE pmt_amt (
    pmt_amt_code INT PRIMARY KEY AUTO_INCREMENT,
    accom VARCHAR(50),
    meal VARCHAR(20),
    goods VARCHAR(50),
    ticket VARCHAR(50),
    sum_price INT,
    mem_code INT,
    FOREIGN KEY (mem_code) REFERENCES mem_info (mem_code)
);

-- 식당분류
CREATE TABLE rest_class (
    rest_class_code INT PRIMARY KEY AUTO_INCREMENT,
    rest_sector VARCHAR(30)
);

-- 숙소분류
CREATE TABLE accom_class (
    accom_class_code INT PRIMARY KEY AUTO_INCREMENT,
    class_name VARCHAR(70)
);

-- 경기장
CREATE TABLE stadium (
    stadium_code INT PRIMARY KEY AUTO_INCREMENT,
    stadium_event VARCHAR(20),
    game VARCHAR(20),
    game_skd TEXT
);

-- 경기장예약
CREATE TABLE stadium_res (
    stadium_res_code INT PRIMARY KEY AUTO_INCREMENT,
    start_date CHAR(15),
    end_date CHAR(15),
    price INT,
    stadium_code INT,
    mem_code INT,
    pmt_amt_code INT,
    FOREIGN KEY (stadium_code) REFERENCES stadium (stadium_code),
    FOREIGN KEY (mem_code) REFERENCES mem_info (mem_code),
    FOREIGN KEY (pmt_amt_code) REFERENCES pmt_amt (pmt_amt_code)
);

-- 관광지
CREATE TABLE theme_park (
    theme_code INT PRIMARY KEY AUTO_INCREMENT,
    location VARCHAR(40),
    theme_phone VARCHAR(15),
    guide VARCHAR(50)
);

-- 관광지예약
CREATE TABLE theme_park_res (
    theme_res_code INT PRIMARY KEY AUTO_INCREMENT,
    pmt_amt_code INT,
    theme_code INT,
    mem_code INT,
    FOREIGN KEY (pmt_amt_code) REFERENCES pmt_amt (pmt_amt_code),
    FOREIGN KEY (theme_code) REFERENCES theme_park (theme_code),
    FOREIGN KEY (mem_code) REFERENCES mem_info (mem_code)
);

-- 기념품
CREATE TABLE goods (
    goods_code INT PRIMARY KEY AUTO_INCREMENT,
    local_goods VARCHAR(50),
    special_goods VARCHAR(50),
    pmt_amt_code INT,
    FOREIGN KEY (theme_code) REFERENCES theme_park (theme_code)
);

-- 식당
CREATE TABLE rest (
    rest_code INT PRIMARY KEY AUTO_INCREMENT,
    rest_name VARCHAR(20),
    rest_location VARCHAR(30),
    rest_phone VARCHAR(15),
    avg_price INT,
    rest_class_code INT,
    FOREIGN KEY (rest_class_code) REFERENCES rest_class (rest_class_code)
);

-- 식당예약
CREATE TABLE rest_res (
    reservation_code INT PRIMARY KEY AUTO_INCREMENT,
    date CHAR(10),
    time CHAR(10),
    people INT,
    amount INT,
    pmt_amt_code INT,
    rest_code INT,
    mem_code INT,
    FOREIGN KEY (pmt_amt_code) REFERENCES pmt_amt (pmt_amt_code),
    FOREIGN KEY (rest_code) REFERENCES rest (rest_code),
    FOREIGN KEY (mem_code) REFERENCES mem_info (mem_code)
);

-- 리뷰 (평점)
CREATE TABLE review (
    review_code INT PRIMARY KEY AUTO_INCREMENT,
    review_date CHAR(30),
    package_review VARCHAR(100),
    mem_code INT,
    pmt_amt_code INT,
    FOREIGN KEY (mem_code) REFERENCES mem_info (mem_code),
    FOREIGN KEY (pmt_amt_code) REFERENCES pmt_amt (pmt_amt_code)
);

-- 질문게시판
CREATE TABLE question_table (
    question_code INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50),
    qna VARCHAR(100),
    mem_code INT,
    FOREIGN KEY (mem_code) REFERENCES mem_info (mem_code)
);

-- 숙소
CREATE TABLE accom (
    accom_code INT PRIMARY KEY AUTO_INCREMENT,
    phone VARCHAR(15),
    location VARCHAR(70),
    price INT,
    name_of_accom VARCHAR(70),
    breakfast_availability VARCHAR(30),
    accom_class_code INT,
    FOREIGN KEY (accom_class_code) REFERENCES accom_class (accom_class_code)
);

-- 숙소예약
CREATE TABLE accom_res (
    res_code INT PRIMARY KEY AUTO_INCREMENT,
    date CHAR(10),
    time VARCHAR(50),
    headcount INT,
    price INT,
    pmt_amt_code INT,
    accom_code INT,
    mem_code INT,
    FOREIGN KEY (pmt_amt_code) REFERENCES pmt_amt (pmt_amt_code),
    FOREIGN KEY (accom_code) REFERENCES accom (accom_code),
    FOREIGN KEY (mem_code) REFERENCES mem_info (mem_code)
);
