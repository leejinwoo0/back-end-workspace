CREATE TABLE Member (
id VARCHAR(50) PRIMARY KEY,
password VARCHAR(255) NOT NULL,
name VARCHAR(100) NOT NULL,
phone VARCHAR(15) NOT NULL,
address VARCHAR(255),
email VARCHAR(100) NOT NULL,
role VARCHAR(20)
);

DELETE FROM Member WHERE id = 'ioii';

/*
id를 프라이머리키로 쓸때
프라이머리키를 거는 순간 낫널 유니크가 걸림 그렇기때문에 auto_increment 필요없음
유니크는 중복허용불가할라고 그렇기때문 아이디에만쓰임 이번경우에는 프라이머리키이기때문에 유니크가 필요없음
*/

SELECT * FROM Member;
SELECT * FROM Chat;
SELECT * FROM petsitter;


CREATE TABLE Chat (
chat_code INT PRIMARY KEY,
title VARCHAR(100) NOT NULL,
text TEXT NOT NULL,
answer TEXT,
id VARCHAR(50),
FOREIGN KEY(id) REFERENCES Member(id)
);

CREATE TABLE Reservation (
res_code INT PRIMARY KEY KEY AUTO_INCREMENT,
petsitter VARCHAR(100),
pet_num INT,
care_time TIME,
date VARCHAR(100),
bath_service BOOLEAN,
walk_service BOOLEAN,
pickup_service BOOLEAN,
id VARCHAR(50),
petsitter_code INT,
FOREIGN KEY (id) REFERENCES member (id),
FOREIGN KEY (petsitter_code) REFERENCES PetSitter (petsitter_code)
);

SELECT * FROM Reservation;
DROP TABLE Reservation;

CREATE TABLE PetSitter (
petsitter_code INT PRIMARY KEY,
petsitter_name VARCHAR(100),
petsitter_grade VARCHAR(50),
petsitter_phone VARCHAR(15),
petsitter_address VARCHAR(255),
petsitter_price DECIMAL (10, 3)
);
SET foreign_key_checks = 1;

DROP TABLE Member;
DROP TABLE PetSitter;

commit;
INSERT INTO PetSitter (petsitter_code, petsitter_name, petsitter_grade, petsitter_phone, petsitter_address, petsitter_price) 
VALUES (1,'펫시터1(서울)', '1등급', '01012345677', '서울' ,'100');
INSERT INTO PetSitter (petsitter_code, petsitter_name, petsitter_grade, petsitter_phone, petsitter_address, petsitter_price) 
VALUES (2,'펫시터2(서울)', '2등급', '01012345677', '서울' ,'70');
INSERT INTO PetSitter (petsitter_code, petsitter_name, petsitter_grade, petsitter_phone, petsitter_address, petsitter_price) 
VALUES (3,'펫시터3(서울)', '3등급', '01012345677', '서울' ,'50');

INSERT INTO PetSitter (petsitter_code, petsitter_name, petsitter_grade, petsitter_phone, petsitter_address, petsitter_price) 
VALUES (4,'펫시터1(경기)', '1등급', '01012345677', '경기' ,'100');
INSERT INTO PetSitter (petsitter_code, petsitter_name, petsitter_grade, petsitter_phone, petsitter_address, petsitter_price) 
VALUES (5,'펫시터2(경기)', '2등급', '01012345677', '경기' ,'70');
INSERT INTO PetSitter (petsitter_code, petsitter_name, petsitter_grade, petsitter_phone, petsitter_address, petsitter_price) 
VALUES (6,'펫시터3(경기)', '3등급', '01012345677', '경기' ,'50');


CREATE TABLE Review (
review_code INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(100) NOT NULL,
review_text VARCHAR(100),
review_date VARCHAR(100),
id VARCHAR(50),
FOREIGN KEY(id) REFERENCES Member(id)
);

SELECT *FROM Review;
DROP TABLE Review;

INSERT INTO Review (review_code, id, review_date, title, review_text, review_photo)
VALUES (1,1, '20241022', '아','자자자자자자',150000);
SELECT * FROM member WHERE id = 1;
INSERT INTO member (id, other_columns) VALUES (1, 'other_values');

