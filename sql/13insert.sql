USE w3schools;
# INSERT INTO 테이블명 (컬럼명...)
# VALUES (데이터들..)

SELECT *
FROM Employees
ORDER BY EmployeeID DESC;


INSERT INTO Employees(LastName)
    VALUE ('ironman');
# null: 값이 없음

INSERT INTO Employees(FirstName)
    VALUE ('tony');

INSERT INTO Employees(LastName, FirstName, BirthDate, Photo, Notes)
VALUES ('captain', 'steven', '1990-01-01', 'pic1', 'america');

INSERT INTO Employees
    (FirstName, LastName)
VALUES ('natasha', 'widow');

SELECT *
FROM Customers
ORDER BY CustomerID DESC;

INSERT INTO Customers(CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('sim', 'sung', 'korea', 'seoul', '222', 'korea');

INSERT INTO Customers(CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('mbape', 'forward', 'france', 'paris', '10', 'france');

SELECT *
FROM Employees
ORDER BY EmployeeID DESC;

