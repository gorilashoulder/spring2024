USE w3schools;
# between 최소값 and 최대값
# 최소값 최대값의 사이이면 true

SELECT *
FROM Products
WHERE Price >= 10.00
  AND Price <= 20.00;

SELECT *
FROM Products
WHERE Price BETWEEN 10.00 AND 20.00;

SELECT *
FROM Orders
WHERE OrderDate BETWEEN '1996-07-01' AND '1996-07-31';

