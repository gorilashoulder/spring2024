USE w3schools;

INSERT INTO Customers
    (CustomerName, ContactName, Address, City, PostalCode, Country)
SELECT CustomerName, ContactName, Address, City, PostalCode, Country
FROM Customers;

SELECT COUNT(*)
FROM Customers;

# 직원 테이블 데이터 추가
INSERT INTO Employees
    (LastName, FirstName, BirthDate, Photo, Notes)
SELECT LastName, FirstName, BirthDate, Photo, Notes
FROM Employees;

DELETE
FROM Employees
WHERE EmployeeID > 580;

SELECT *
FROM Employees;

INSERT INTO Employees
    (LastName, FirstName, BirthDate, Photo, Notes)
SELECT LastName, FirstName, BirthDate, Photo, Notes
FROM Employees;

