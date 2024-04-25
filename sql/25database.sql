USE w3schools;
# 사용할 데이터 베이스 선택하기

SHOW tables;

# 새 데이터베이스 만들기
CREATE DATABASE mydb1;

USE mydb1;
SHOW tables;

CREATE TABLE my_table
(
    name VARCHAR(3),
    age  INT
);

CREATE DATABASE mydb2;

USE mydb2;
CREATE TABLE my_table
(
    name VARCHAR(10),
    age  INT
);

SELECT *
FROM my_table;

SELECT *
FROM mydb1.my_table;

DROP DATABASE mydb2;

DROP DATABASE mydb1;