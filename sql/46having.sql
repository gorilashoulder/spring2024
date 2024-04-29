USE w3schools;
# HAVING :집계함수 조건절

SELECT CategoryID, COUNT(ProductID)
FROM Products
GROUP BY CategoryID;

# 상품 수가 10개 이상인 카테고리
SELECT *
FROM (SELECT CategoryID, COUNT(ProductID) 상품수
      FROM Products
      GROUP BY CategoryID) c
WHERE 상품수 >= 10;

SELECT CategoryID, COUNT(ProductID) 상품수
FROM Products
GROUP BY CategoryID
HAVING 상품수 >= 10;

# 고객이 5명 이상 있는 국가들 조회
SELECT Country, COUNT(CustomerID) 총
FROM Customers
GROUP BY Country
HAVING 총 >= 5;


# 97년 7월 매출액이 10000 이상인 직원들 조회
SELECT e.EmployeeID, e.FirstName, e.LastName, SUM(Price * Quantity) 합
FROM OrderDetails od
         JOIN Products p ON od.ProductID = p.ProductID
         JOIN Orders o ON o.OrderID = od.OrderID
         JOIN Employees e ON o.EmployeeID = e.EmployeeID
WHERE OrderDate BETWEEN '1997-07-01' AND '1997-07-31'
GROUP BY e.EmployeeID
HAVING 합 >= 10000;

# 해당월의 고객별 구매금액 조회
SELECT c.CustomerID, c.CustomerName, SUM(Price * Quantity) income
FROM Customers c
         JOIN Orders o ON o.CustomerID = c.CustomerID
         JOIN OrderDetails od ON od.OrderID = o.OrderID
         JOIN Products p ON p.ProductID = od.ProductID
WHERE OrderDate BETWEEN '1997-08-01' AND '1997-08-31'
GROUP BY c.CustomerID
ORDER BY income DESC;