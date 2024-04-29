# aggregate function: 집계함수
# 평균, 합계,갯수,최댓값,최솟값,
# NULL은 집계시 제외됨
USE w3schools;
# COUNT: 갯수
SELECT COUNT(EmployeeID)
FROM Employees;
SELECT COUNT(Employees.Notes)
FROM Employees;
SELECT COUNT(Country)
FROM Customers;

SELECT COUNT(DISTINCT Country)
FROM Customers;
SELECT Country
FROM Customers;

# MIN: 최솟값
# MAX: 최댓값
SELECT MAX(Price)
FROM Products;

SELECT MIN(Price)
FROM Products;

SELECT MAX(BirthDate)
FROM Employees;

SELECT MIN(Employees.BirthDate)
FROM Employees;

# SUM:합계\
SELECT SUM(Price)
FROM Products;

# AVG :평균
SELECT AVG(Price)
FROM Products;