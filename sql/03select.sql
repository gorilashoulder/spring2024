USE w3schools;
SELECT CustomerName, City -- 컬럼명 나열
FROM Customers;
SELECT Country
FROM Customers;
-- 91records

-- DISTINCT 중복 제거
SELECT DISTINCT Country
FROM Customers;

SELECT Customers.City, Customers.Country
FROM Customers;

SELECT DISTINCT City, Country
FROM Customers;

--  COUNT : 레코드 수 구하는 내장 함수
SELECT COUNT(City)
FROM Customers;

SELECT COUNT(DISTINCT City)
FROM Customers;

SELECT COUNT(DISTINCT Country)
FROM Customers;

