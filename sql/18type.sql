# 문자열
# VARCHAR(길이)
CREATE TABLE my_table3
(
    name  VARCHAR(3),
    title VARCHAR(5),
    notes VARCHAR(1000)
);
DESCRIBE my_table3;
INSERT INTO my_table3
    (name, title, notes)
VALUES ('벨링엄', '축구선수', '레알마드리드');

SELECT *
FROM my_table3;

INSERT INTO my_table3
    (name, title, notes)
VALUES ('네이마르', '야구선수', '사우디');

CREATE TABLE my_table4
(
    bookname    VARCHAR(10),
    bookcontent VARCHAR(500),
    writer      VARCHAR(20)
);
DESCRIBE my_table4;
INSERT INTO my_table4
    (bookname, bookcontent, writer)
VALUES ('스프링부트3', '자바 백엔드 개발 입문', '이정환');

SELECT *
FROM my_table4;



# 수
# 정수 INT
# 실수 DECIMAL,DEC(총길이 ,소수점 이하 길이)
CREATE TABLE my_table5
(
    age    INT,
    height DEC(5, 2)
);
DESCRIBE my_table5;

INSERT INTO my_table5
    (age, height)
VALUES (10, 170.25);

SELECT *
FROM my_table5;

INSERT INTO my_table5
    (age, height)
VALUES (10, 170.349);

CREATE TABLE my_table6
(
    backnumber INT,
    weight     DEC(3, 1)
);

DESCRIBE my_table6;

INSERT INTO my_table6
    (backnumber, weight)
VALUES (5, 77.3);

SELECT *
FROM my_table6;

# 날짜시간
# DATE; 날짜 (YYYY-MM-DD)
# DATETIME; 날짜시간 (YYYY-MM-DD HH:MM:SS)

CREATE TABLE my_table7
(
    col1 DATE,
    col2 DATETIME
);
DESC my_table7;
INSERT INTO my_table7 (col1, col2)
VALUES ('2002-02-02', '2001-12-30 22:10:20');

SELECT *
FROM my_table7;

CREATE TABLE my_table8
(
    birth1 DATE,
    birth2 DATETIME
);
DESCRIBE my_table8;
INSERT INTO my_table8
    (birth1, birth2)
VALUES ('1999-09-29', '1999-03-20 20:13:22');

SELECT *
FROM my_table8;

CREATE TABLE my_table9
(
    string_col    VARCHAR(30),
    int_col       INT,
    dec_col       DEC(10, 2),
    date_col      DATE,
    date_time_col DATETIME
);
DESCRIBE my_table9;

INSERT INTO my_table9
    (string_col, int_col, dec_col, date_col, date_time_col)
VALUES ('헬로', 30, 30.222, '1992-02-12', '2001-02-02 19:20:30');

SELECT *
FROM my_table9;

CREATE TABLE my_table10
(
    title     VARCHAR(30),
    name      VARCHAR(30),
    age       INT,
    price     DEC(10, 3),
    published DATE,
    inserted  DATETIME
);

INSERT INTO my_table10
    (title, name, age, price, published, inserted)
VALUES ('이것이 자바다', '신용권', 40, 23422.223, '1999-09-12', '1999-09-22 10:10:20'),
       ('스프링부트', '벨링엄', 5, 23.44, '2003-03-22', '1999-02-01 10:20:30');

SELECT *
FROM my_table10;