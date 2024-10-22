CREATE TABLE Member (
id VARCHAR(50) PRIMARY KEY,
password VARCHAR(255) NOT NULL,
name VARCHAR(100) NOT NULL,
phone VARCHAR(15) NOT NULL,
address VARCHAR(255),
email VARCHAR(100) NOT NULL,
role VARCHAR(20)
);

/*
id를 프라이머리키로 쓸때
프라이머리키를 거는 순간 낫널 유니크가 걸림 그렇기때문에 auto_increment 필요없음
유니크는 중복허용불가할라고 그렇기때문 아이디에만쓰임 이번경우에는 프라이머리키이기때문에 유니크가 필요없음
*/

SELECT *FROM Member;
SELECT * FROM Chat;



CREATE TABLE Chat (
chat_code INT PRIMARY KEY,
title VARCHAR(100) NOT NULL,
text TEXT NOT NULL,
answer TEXT,
id VARCHAR(50),
FOREIGN KEY(id) REFERENCES Member(id)
);

CREATE TABLE Reservation (
res_code INT PRIMARY KEY,
petsitter VARCHAR(100),
pet_num INT,
care_time TIME,
bath_service BOOLEAN,
walk_service BOOLEAN,
pickup_service BOOLEAN,
id VARCHAR(50),
petsitter_code INT,
FOREIGN KEY (id) REFERENCES member (id),
FOREIGN KEY (petsitter_code) REFERENCES PetSitter (petsitter_code)
);

CREATE TABLE PetSitter (
petsitter_code INT PRIMARY KEY,
petsitter_class VARCHAR(50),
petsitter_phone VARCHAR(15),
price DECIMAL (10, 2)
);

CREATE TABLE Review (
review_code INT PRIMARY KEY,
title VARCHAR(100) NOT NULL,
review_text TEXT NOT NULL,
review_photo VARCHAR(255),
review_date DATE,
id VARCHAR(50),
FOREIGN KEY(id) REFERENCES Member(id)
);

INSERT INTO Review (review_code, id, review_date, title, review_text, review_photo)
VALUES (1,1, '20241022', '아','자자자자자자',150000);
SELECT * FROM member WHERE id = 1;
INSERT INTO member (id, other_columns) VALUES (1, 'other_values');

