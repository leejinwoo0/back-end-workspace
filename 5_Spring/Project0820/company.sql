
-- 업체 (경기장, 숙소, 식당) <-- 구분할 컬럼 하나만 추가!
CREATE TABLE company (
    com_code INT PRIMARY KEY AUTO_INCREMENT,
    com_id VARCHAR(50),
    com_password VARCHAR(50),
    com_name VARCHAR(50),
    com_phone VARCHAR(13),
    com_role VARCHAR(50),
    com_type VARCHAR(20) -- 경기장, 숙소, 식당 
);
SET foreign_key_checks = 1;
DROP TABLE company;
SELECT * FROM company;

-- SELECT를 사용한다고 했을 때 --> 경기장 업체들만 가지고 오고 싶을 수도 있죠
SELECT * FROM company
WHERE com_type = "경기장";
INSERT INTO mem_info (id, password, name, phone, type) VALUES('com1', '1234', 'com', '01012345678');