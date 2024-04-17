USE w3schools;
#SELECT에 컬럼명
#FROM 테이블명
#WHERE 솎아낼 레코드 조건
SELECT CustomerName, City, Country
FROM Customers
WHERE City = 'Berlin';
SELECT CustomerName, City, Country
FROM Customers
WHERE Country = 'Germany';

#컬럼명 비교연산자 값
#값에 '' 로 감싸기 (but , 수{number}형식은 생략해도댐)

SELECT *
FROM Customers
WHERE CustomerID = '1';

SELECT *
FROM Customers
WHERE CustomerID = 1;
-- 권장

#비교연산자
#같지않다 !=, <>
SELECT *
FROM Customers
WHERE Customers.CustomerID = 3;

SELECT *
FROM Customers
WHERE Customers.CustomerID < 3;

SELECT *
FROM Customers
WHERE Customers.CustomerID > 89;

#문자열형식(대소문자 구별 안함)
SELECT *
FROM Customers
WHERE CustomerName > 'S';

SELECT *
FROM Customers
WHERE CustomerName > 's';

SELECT *
FROM Customers
WHERE Country = 'geRmAny';

#날짜형식
SELECT *
FROM Employees
WHERE BirthDate = '1968-12-08';

SELECT *
FROM Employees
WHERE BirthDate >= '1940-12-08';

SELECT *
FROM Suppliers
WHERE Country = 'usa';

SELECT*
FROM Employees
WHERE LastName = 'fuller';

SELECT *
FROM Products
WHERE CategoryID = 3;

SELECT *
FROM Products
WHERE Price >= 20.00;

SELECT*
FROM Orders
WHERE OrderDate <= '1996-12-31';

SELECT *
FROM Products;

SELECT*
FROM Customers;



