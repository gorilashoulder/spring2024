USE w3schools;
# DEFAULT 값을 주지 않을 때의 기본값을 정의

CREATE TABLE my_table13
(
    co1  VARCHAR(18),
    col2 VARCHAR(20) DEFAULT 'bellingham'
);
DESCRIBE my_table13;

INSERT INTO my_table13
    (co1, col2)
VALUES ('real', 'bale');

SELECT *
FROM my_table13;

INSERT INTO my_table13
    (col2) VALUE ('messi');

INSERT INTO my_table13
    (co1) VALUE ('jude');

INSERT INTO my_table13
    (co1, col2)
VALUES ('siuu', NULL);

CREATE TABLE my_table14
(
    col1 VARCHAR(30),
    col2 VARCHAR(20) NOT NULL,
    col3 VARCHAR(20)          DEFAULT 'Chovyyy',
    col4 VARCHAR(20) NOT NULL DEFAULT 'GEN G'
);

SELECT *
FROM my_table14;

INSERT INTO my_table14
    (col1, col2)
VALUES ('HELLO', 'MSI CHAMP');