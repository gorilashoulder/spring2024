USE w3schools;

# UNIQUE : 다른 레코드의 컬럼 값이 중복되지 않음

CREATE TABLE my_table15
(
    co1  VARCHAR(30),
    col2 VARCHAR(3) UNIQUE
);

INSERT INTO my_table15
    (co1, col2)
VALUES ('hello', 'wor');

SELECT *
FROM my_table15;

INSERT INTO my_table15
    (co1, col2)
VALUES ('qwe', 'qwe');

INSERT INTO my_table15
    (co1, col2)
VALUES ('qwe', 'qwe');

DESCRIBE my_table15;

INSERT INTO my_table15
    (co1, col2)
VALUES (Null, NULL);

CREATE TABLE my_table16
(
    col1 VARCHAR(10) UNIQUE,
    co2  VARCHAR(10) NOT NULL UNIQUE
);

INSERT INTO my_table16
    (col1, co2)
VALUES ('hello', 'dam');

SELECT *
FROM my_table16;

DESCRIBE my_table16;

