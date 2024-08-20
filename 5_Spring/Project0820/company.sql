-- 경기장업체
CREATE TABLE com_stadium (
    stadium_code INT PRIMARY KEY AUTO_INCREMENT,
    id VARCHAR(50),
    password VARCHAR(50),
    name VARCHAR(50),
    phone VARCHAR(13)
);
-- 숙소업체
CREATE TABLE com_accom (
    accom_code INT PRIMARY KEY AUTO_INCREMENT,
    id VARCHAR(50),
    password VARCHAR(50),
    name VARCHAR(50),
    phone VARCHAR(13)
);
-- 식당업체
CREATE TABLE com_rest (
    rest_code INT PRIMARY KEY AUTO_INCREMENT,
    id VARCHAR(50),
    password VARCHAR(50),
    name VARCHAR(50),
    phone VARCHAR(13)
);
