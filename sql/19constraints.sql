USE w3schools;
# 제약사항 constraints
# 특정 컬럼에 제약사항을 줘서(예: 꼭 값이 있어야함 ,기본값, 중복불가)

# NOT NULL :꼭 값이 있어야함
CREATE TABLE my_table11
(
    col1 VARCHAR(10),
    col2 VARCHAR(20) NOT NULL
);
DESCRIBE my_table11;

INSERT INTO my_table11
    (col1, col2)
VALUES ('value1', 'value2');

INSERT INTO my_table11
    (col2) VALUE ('hello');

SELECT *
FROM my_table11;

SELECT *
FROM my_table11
WHERE col1 IS NULL;

# NULL과의 연산은 모두 FALSE

CREATE TABLE my_table12
(
    col1 VARCHAR(20) NOT NULL,
    col2 VARCHAR(30) NOT NULL
);

DESCRIBE my_table12;

SELECT*
FROM my_table12;

INSERT INTO my_table12
    (col1, col2)
VALUES ('hello', 'world');