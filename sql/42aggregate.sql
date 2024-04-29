USE mydb2;

CREATE TABLE table12
(
    number INT
);
INSERT INTO table12
VALUES (3),
       (4),
       (5),
       (NULL),
       (NULL);

SELECT *
FROM table12;

SELECT COUNT(table12.number)
FROM table12;

SELECT MAX(table12.number)
FROM table12;

# --NULL을 다른값으로 바꾸기
SELECT table12.number
FROM table12;

SELECT IFNULL(number, 0)
FROM table12;

SELECT COUNT(IFNULL(table12.number, 0))
FROM table12;

SELECT AVG(table12.number)
FROM table12;

SELECT AVG(IFNULL(table12.number, 0))
FROM table12;