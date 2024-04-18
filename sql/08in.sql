USE w3schools;
# in 하나라도 같으면...
SELECT *
FROM Customers
WHERE Country = 'Germany'
   OR Country = 'uk';

SELECT *
FROM Customers
WHERE Country IN ('germany', 'uk', 'france', 'sweden');

SELECT *
FROM Products
WHERE