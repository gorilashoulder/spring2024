USE w3schools;

SELECT *
FROM Employees
ORDER BY EmployeeID DESC;

# 지우기 전에 꼭! 같은 WHERE로 SELECT 해보기
DELETE
FROM Employees
# SELECT *
# FROM Employees
WHERE EmployeeID = 513;

# DELETE
SELECT*
FROM Employees
WHERE LastName = '리오넬';

# 모든 레코드 지우기: WHERE 안쓰면됨
SELECT *
FROM Employees;
# DELETE
# FROM Employees;

