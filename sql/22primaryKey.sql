USE w3schools;

# PRIMARY KEY: NOT NULL UNIQUE
CREATE TABLE my_table17
(
    col1 INT,
    col2 INT PRIMARY KEY
);
INSERT INTO my_table17
    (col1, col2)
VALUES (1, 1);
INSERT INTO my_table17
    (col1, col2)
VALUES (2, 2);

INSERT INTO my_table17
    (col1, col2)
VALUES (3, 1);

SELECT *
FROM my_table17;

# PRIMARY KEY 제약사항은 한 테이블에 하나만 줄 수 있음
CREATE TABLE my_table18
(
    col1 INT PRIMARY KEY,
    col2 INT PRIMARY KEY
);

CREATE TABLE my_table19
(
    col1 INT NOT NULL UNIQUE,
    col2 INT NOT NULL UNIQUE
);

# 여러 컬럼 조합으로 PRIMARY 제약사항을 줄 수 있음
CREATE TABLE my_table21
(
    col1 INT,
    col2 INT,
    col3 INT,
    PRIMARY KEY (col1, col2)
);
DESCRIBE my_table21;

SELECT *
FROM my_table21;

INSERT INTO my_table21
    (col1, col2, col3)
VALUES (1, 1, 1);

INSERT INTO my_table21
    (col1, col2, col3)
VALUES (1, 2, 1);

INSERT INTO my_table21
    (col1, col2, col3)
VALUES (2, 2, 1);

INSERT INTO my_table21
    (col1, col2, col3)
VALUES (2, 2, 1);

CREATE TABLE my_table22
(
    col1 INT,
    col2 INT,
    PRIMARY KEY (col1, col2)
);
INSERT INTO my_table22
    (col1, col2)
VALUES (3, 1);

SELECT *
FROM my_table22;