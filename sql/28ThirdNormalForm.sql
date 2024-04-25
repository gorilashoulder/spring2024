# ThirdNormalForm (3NF)

# 1) 2NF이다.
# 2) 키가 아닌 컬럼 끼리 종속되면 안됨

USE mydb1;
DROP TABLE phone_number;
DROP TABLE customer;

CREATE TABLE customer
(
    id         INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(10),
    last_name  VARCHAR(10),
    level      INT,
    FOREIGN KEY (level) REFERENCES customer_benefit (level)
);

CREATE TABLE customer_benefit
(
    level   INT PRIMARY KEY,
    benefit VARCHAR(30)
);


INSERT INTO customer
    (first_name, last_name, level)
VALUES ('son', 'hm', 1),
       ('lee', 'ki', 1),
       ('kim', 'hs', 2),
       ('lee', 'jh', 2),
       ('ste', 'sed', 3);

INSERT INTO customer_benefit
    (level, benefit)
VALUES (1, '무료배송'),
       (2, '할인'),
       (3, '라운지');

SELECT *
FROM customer;

SELECT *
FROM customer_benefit;

DROP TABLE customer;
DROP TABLE customer_benefit;


