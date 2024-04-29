USE w3schools;

# Group by :집계함수(avg,sum,count,min,max)를 그룹별로 결과 내게 함
SELECT CategoryID, COUNT(Products.ProductID)
FROM Products
GROUP BY CategoryID;


SELECT CategoryID, (SELECT c.CategoryName FROM Categories c WHERE c.CategoryID = p.CategoryID), (ProductID)
FROM Products p
GROUP BY CategoryID;

SELECT CategoryID, COUNT(Products.ProductID)
FROM Products
GROUP BY CategoryID;

SELECT e.EmployeeID, e.LastName, e.FirstName, SUM(od.Quantity * p.Price) 매출액
FROM Orders o
         JOIN OrderDetails od
              ON o.OrderID = od.OrderID
         JOIN Products p ON od.ProductID = p.ProductID
         JOIN Employees e ON o.EmployeeID = e.EmployeeID
WHERE OrderDate BETWEEN '1997-07-01' AND '1997-07-31'
GROUP BY e.EmployeeID;

SELECT c.CustomerID, c.CustomerName, SUM(Quantity * Price) 매출1등
FROM Orders o
         JOIN OrderDetails od ON o.OrderID = od.OrderID
         JOIN Products p ON od.ProductID = p.ProductID
         JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE OrderDate BETWEEN '1997-07-01' AND '1997-07-31'
GROUP BY c.CustomerID
ORDER BY 매출1등 DESC
LIMIT 10;

SELECT City, Country, COUNT(CustomerID)
FROM Customers
GROUP BY Country, City;

# 고객별 상품별 주문량

SELECT c.CustomerId  고객번호,
       c.CustomerName,
       p.ProductID,
       p.ProductName,
       SUM(Quantity) 상품주문수
FROM OrderDetails od
         JOIN Orders o
              ON od.OrderID = o.OrderID
         JOIN Customers c
              ON o.CustomerID = c.CustomerID
         JOIN Products p
              ON od.ProductID = p.ProductID
GROUP BY o.CustomerID, p.ProductID
ORDER BY 고객번호, 상품주문수 DESC;


SELECT c.Country, p.ProductName, od.Quantity 총
FROM OrderDetails od
         JOIN Orders o ON od.OrderID = o.OrderID
         JOIN Customers c ON c.CustomerID = o.CustomerID
         JOIN Products p ON p.ProductID = od.ProductID
GROUP BY c.Country, p.ProductID
ORDER BY c.Country ASC, 총 DESC;



SELECT c.Country, ProductName, SUM(od.Quantity) 총합
FROM OrderDetails od
         JOIN Orders o ON od.OrderID = o.OrderID
         JOIN Customers c ON c.CustomerID = o.CustomerID
         JOIN Products p ON p.ProductID = od.ProductID
GROUP BY c.Country, p.ProductID
ORDER BY c.Country, 총합 DESC;


# 국가별, 상품별 주문수량 조회 (국가(asc), 상품판매수(desc) 순 정렬)

SELECT c.Country,
       ProductName,
       SUM(Quantity) 수량
FROM Products p
         JOIN OrderDetails od
              ON p.ProductID = od.ProductID
         JOIN Orders o
              ON od.OrderID = o.OrderID
         JOIN Customers c
              ON o.CustomerID = c.CustomerID
GROUP BY c.Country, p.ProductID
ORDER BY c.Country, 수량 DESC;

# 상품별, 국가별 주문수량
SELECT ProductName,
       c.Country,
       SUM(Quantity) 수량
FROM Products p
         JOIN OrderDetails od
              ON p.ProductID = od.ProductID
         JOIN Orders o
              ON od.OrderID = o.OrderID
         JOIN Customers c
              ON o.CustomerID = c.CustomerID
GROUP BY p.ProductID, c.Country
ORDER BY p.ProductId, 수량 DESC;


