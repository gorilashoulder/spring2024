USE w3schools;

# 1번 카테고리 상품의 평균 가격은?
SELECT AVG(Products.Price)
FROM Products
WHERE CategoryID = 1;

SELECT SUM(OrderDetails.Quantity)
FROM OrderDetails
WHERE ProductID = 1;

SELECT SUM(Quantity)
FROM OrderDetails od
         JOIN Orders o ON od.OrderID = o.OrderID
WHERE ProductID = 2
  AND o.OrderDate BETWEEN '1997-01-01' AND '1997-12-31';

SELECT SUM(Price * Quantity)
FROM Orders o
         JOIN OrderDetails od
              ON o.OrderID = od.OrderID
         JOIN Products p ON p.ProductID = od.ProductID
WHERE o.CustomerID = 1
  AND o.OrderDate BETWEEN '1997-01-01' AND '1997-12-31';

SELECT SUM(Price * Quantity)
FROM Customers c
         JOIN Orders o ON c.CustomerID = o.CustomerID
         JOIN OrderDetails od ON od.OrderID = o.OrderID
         JOIN Products p ON p.ProductID = od.ProductID
WHERE c.Country = 'mexico'
  AND o.OrderDate BETWEEN '1997-01-01' AND '1997-12-31';