USE w3schools;
# ALTER TABLE: 테이블 구조 변경
# 컬럼 추가
CREATE TABLE my_table23
(
    name VARCHAR(3),
    age  INT
);
INSERT INTO my_table23 (name, age)
VALUES ('son', 44),
       ('lee', 22);

SELECT *
FROM my_table23;


ALTER TABLE my_table23
    ADD COLUMN address VARCHAR(10) DEFAULT 'KOREA';

ALTER TABLE my_table23
    ADD COLUMN price VARCHAR(10);

ALTER TABLE my_table23
    ADD COLUMN state VARCHAR(10) NOT NULL;

ALTER TABLE my_table23
    ADD COLUMN birth DATE AFTER age;

# 컬럼 삭제 (주의!!)
ALTER TABLE my_table23
    DROP COLUMN state;

# 컬럼 변경
#   이름변경,
ALTER TABLE my_table23
    RENAME COLUMN address TO town;
ALTER TABLE my_table23
    RENAME COLUMN birth TO birth_date;

#   자료형/제약사항변경
ALTER TABLE my_table23
    MODIFY COLUMN price DEC(20, 2);

ALTER TABLE my_table23
    MODIFY COLUMN name VARCHAR(30);

DESCRIBE my_table23;

ALTER TABLE my_table23
    MODIFY COLUMN name VARCHAR(20) UNIQUE;

ALTER TABLE my_table23
    MODIFY COLUMN age int(11) UNIQUE;

SHOW index FROM my_table23;
ALTER TABLE my_table23
    DROP INDEX age;

DESC my_table23;

ALTER TABLE my_table23
    DROP INDEX name;

# NOT NULL 추가
ALTER TABLE my_table23
    MODIFY COLUMN name VARCHAR(20) NOT NULL;

ALTER TABLE my_table23
    MODIFY COLUMN name VARCHAR(20) NULL;

ALTER TABLE my_table23
    MODIFY COLUMN age int(11) NOT NULL;

ALTER TABLE my_table23
    MODIFY COLUMN age int(11) NULL;

# DEFAULT 제약 사항 추가/삭제
ALTER TABLE my_table23
    MODIFY COLUMN name VARCHAR(20) DEFAULT 'guest';

ALTER TABLE my_table23
    ALTER COLUMN name DROP DEFAULT;


DESCRIBE my_table23;

SELECT *
FROM my_table23;

INSERT INTO my_table23(age) VALUE (2);

ALTER TABLE my_table23
    ADD PRIMARY KEY (name);

ALTER TABLE my_table23
    DROP PRIMARY KEY;

ALTER TABLE my_table23
    MODIFY COLUMN name VARCHAR(20) NULL;

ALTER TABLE my_table23
    ADD PRIMARY KEY (age);

ALTER TABLE my_table23
    DROP PRIMARY KEY;

DELETE
FROM my_table23
WHERE name = '';
