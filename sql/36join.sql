USE w3schools;

SELECT *
FROM Products;

SELECT *
FROM Categories
WHERE CategoryID = 1;

# 1번 상품의 카데고리명 조회
SELECT p.ProductName, c.CategoryName
FROM Products p
         JOIN Categories c
              ON p.CategoryID = c.CategoryID
WHERE p.ProductID = 1;

SELECT *
FROM Products;

SELECT *
FROM Suppliers;

SELECT p.ProductName, s.SupplierName, s.Country
FROM Products p
         JOIN Suppliers s ON p.SupplierID = s.SupplierID
WHERE p.ProductID = 10;

# 10249번 주문을 한 고객의 이름 조회
SELECT *
FROM Orders;

SELECT *
FROM Customers;

SELECT c.CustomerName
FROM Orders o
         JOIN Customers c ON c.CustomerID = o.CustomerID
WHERE o.OrderID = 10249;

SELECT e.LastName, e.FirstName
FROM Orders o
         JOIN Employees e ON o.EmployeeID = e.EmployeeID
WHERE o.OrderID = 10249;

SELECT s.ShipperName
FROM Orders o
         JOIN Shippers s ON o.ShipperID = s.ShipperID
WHERE o.OrderID = 10249;

SELECT c.CustomerName, o.OrderDate
FROM Orders o
         JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE c.CustomerID = 90
ORDER BY o.OrderDate;

# 3번 직원이 주문을 처리한 날짜들을 오름차순 조회 (직원이름, 날짜)

SELECT e.LastName, e.FirstName, o.OrderDate
FROM Orders o
         JOIN Employees e ON o.EmployeeID = e.EmployeeID
WHERE e.EmployeeID = 3
ORDER BY o.OrderDate;