USE w3schools;
# 1행 1열의결과 (scalar)
SELECT AVG(Products.Price)
FROM Products;
SELECT *
FROM Products
WHERE Price >= 28.866364;

SELECT *
FROM Products
WHERE Price >= (SELECT AVG(Price)
                FROM Products);

SELECT AVG(Price)
FROM Products;


SELECT ProductName
FROM Products
WHERE Price >= (SELECT AVG(Products.Price)
                FROM Products)
  AND CategoryID = 2;
# 여러행 1열 결과
SELECT CustomerID
FROM Customers
WHERE Country = 'mexico';

# mexico 고객이 주문한 건들 조회
SELECT *
FROM Orders
WHERE CustomerID IN (SELECT CustomerID
                     FROM Customers
                     WHERE Country = 'mexico');

SELECT *
FROM Orders o
         JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE Country = 'mexico';

SELECT *
FROM Products
WHERE CategoryID IN (SELECT CategoryID
                     FROM Orders
                     WHERE OrderDate);

SELECT ProductID
FROM Products
WHERE CategoryID = 1;

SELECT OrderID
FROM OrderDetails
WHERE ProductID IN (SELECT ProductID
                    FROM Products
                    WHERE CategoryID = 1);


SELECT DISTINCT OrderDate
FROM Orders
WHERE OrderID IN (SELECT OrderID
                  FROM OrderDetails
                  WHERE ProductID IN (SELECT ProductID
                                      FROM Products
                                      WHERE CategoryID = 1));

SELECT DISTINCT o.OrderDate
FROM Orders o
         JOIN OrderDetails od
              ON o.OrderID = od.OrderID
         JOIN Products p
              ON od.ProductID = p.ProductID
WHERE p.CategoryID = 1;


# 여러행 여러열 결과
SELECT City, Country
FROM Customers
WHERE CustomerID IN (1, 2);

SELECT CustomerName
FROM Customers
WHERE (City, Country) IN (('berlin', 'germany'), ('México D.F.', 'Mexico'));

SELECT CustomerName
FROM Customers
WHERE (City, Country) IN (SELECT City, Country
                          FROM Customers
                          WHERE CustomerID IN (1, 2));

# 상관서브쿼리 (속도가 느린 편, JOIN으로 해결할수 있으면 JOIN으로)
# 외부쿼리의 값이 내부 쿼리에 사용될 때

# 각 고객의 주문 횟수
SELECT CustomerName, Country, (SELECT COUNT(OrderID) FROM Orders WHERE Customers.CustomerID = Orders.CustomerID)
FROM Customers;

SELECT CustomerName, Country, COUNT(OrderID)
FROM Customers c
         LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID;

# 상품별  총 매출금액
SELECT *
FROM Products
WHERE Price;

SELECT *
FROM Orders
WHERE OrderID;

SELECT *
FROM OrderDetails
WHERE Quantity;

SELECT ProductID, ProductName, (SELECT SUM(Quantity) FROM OrderDetails WHERE ProductID = ProductID) * Price AS 매출액
FROM Products;

SELECT SUM(Price * Quantity)
FROM Products p
         JOIN OrderDetails od ON p.ProductID = od.ProductID
         JOIN Orders o ON od.OrderID = o.OrderID
GROUP BY p.ProductID;


