USE mydb2;
CREATE TABLE employee
(
    id         INT PRIMARY KEY,
    name       VARCHAR(10) NOT NULL,
    info       VARCHAR(10) NOT NULL,
    manager_id INT
);

INSERT INTO employee
VALUES (1, '손흥민', '과장', 6),
       (2, '이강인', '대리', 1),
       (3, '이정후', '사원', 1),
       (4, '황희찬', '대리', 1),
       (5, '차범근', '사장', null),
       (6, '박지성', '차장', 5);

# 손흥민의 직속 상사는?
SELECT *
FROM employee e
         JOIN employee m
              ON e.manager_id = m.id
WHERE e.name = '손흥민';


SELECT m.name
FROM employee e
         JOIN employee m
              ON e.manager_id = m.id
WHERE e.name = '이정후';

# 손흥민 직속 직원들
SELECT m.name
FROM employee e
         JOIN employee m ON e.id = m.manager_id
WHERE e.name = '손흥민';

