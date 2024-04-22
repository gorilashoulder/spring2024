USE w3schools;
# UPDATE 테이블명
# SET 컬럼명=바꿀값, ,컬럼명=바꿀값,...
# WHERE 레코드의 조건

# 주의 !!: UPDATE전에 같은 WHERE 로 SELECT 꼭 해보기!!

SELECT *
FROM Customers
WHERE CustomerID;
UPDATE Customers
SET CustomerName='IRON MAN'
WHERE CustomerID = 10;
UPDATE Customers
SET ContactName='Tony STARK'
WHERE CustomerID = 10;

UPDATE Customers
SET Address='STARK TOWER',
    City='맨하튼'
WHERE CustomerID = 10;

SELECT *
FROM Customers
WHERE Country = '영국';

UPDATE
    Customers
SET Country='영국'
WHERE Country = 'uk';

SELECT *
FROM Customers;

SELECT *
FROM Products
WHERE ProductID = 1;

UPDATE
    Products
SET Price=30.00
WHERE ProductID = 1;

UPDATE Products
SET Price=Price * 2
WHERE ProductID = 1;



SELECT *
FROM Products
WHERE CategoryID = 2;

UPDATE Products
SET Price=Price * 2
WHERE CategoryID = 2;