CREATE DATABASE task3; 
USE task3;
CREATE TABLE Customers (
  CustomerID INT PRIMARY KEY,
  Name VARCHAR(255) NOT NULL,
  Email VARCHAR(255) UNIQUE,
  Age INT CHECK (Age >= 18),
  Country VARCHAR(255) 
);
INSERT INTO Customers (CustomerID, Name, Email, Age, Country)
VALUES
  (1, 'Rohan', 'Rohan45@gmail.com', 25, 'India'),
  (2, 'Priya viji', 'viji45@gmail.com', 30, 'Canada'),
  (3, ' Smitha', 'smitha78@gmail.com', 35, 'UK'),
  (4, ' Johnson', 'alice@gmail.com', 20, 'Australia'),
  (5, 'karan', 'karanvj@gmail.com', 40, 'Germany'),
  (6, 'sonia', 'soniah@gmail.com', 28, 'France'),
  (7, 'mohan', 'mohan@gmail.com', 32, 'Italy'),
  (8, 'sita', 'sitaram@gmail.com', 38, 'Spain'),
  (9, 'raj', 'raj789@gmail.com', 45, 'Sweden'),
  (10, 'Sarah iyer', 'iyer@gmail.com', 22, 'Norway');
SELECT * FROM Customers where age BETWEEN 25 and 30;
SELECT * FROM Customers where Name like 'S%';
SELECT * FROM Customers  order by Email ASC;
SELECT UPPER(Name), LOWER(Email), CONCAT(Name, ' ', Email), LENGTH(Country) FROM Customers;
CREATE INDEX idx_CustomerID ON Customers (CustomerID);
SELECT * FROM Customers WHERE CustomerID = 5;

 CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerID INT,
  OrderDate DATE NOT NULL,
  Total DECIMAL(10, 2) CHECK (Total > 0),
  Status VARCHAR(255) CHECK (Status IN ('Pending', 'Shipped', 'Delivered')),
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
 INSERT INTO Orders (OrderID, CustomerID, OrderDate, Total, Status)
VALUES
  (1, 1, '2022-01-01', 100.00, 'Pending'),
  (2, 2, '2023-11-15', 200.00, 'Shipped'),
  (3, 3, '2021-02-24', 50.00, 'Delivered'),
  (4, 4, '2022-03-31', 300.00, 'Pending'),
  (5, 5, '2024-04-21', 400.00, 'Shipped'),
  (6, 6, '2022-05-10', 25.00, 'Delivered'),
  (7, 7, '2020-06-06', 150.00, 'Pending'),
  (8, 8, '2022-12-01', 250.00, 'Shipped'),
  (9, 9, '2023-08-26', 75.00, 'Delivered'),
  (10, 10, '2022-09-18', 500.00, 'Pending');
SELECT * FROM Orders WHERE Total BETWEEN 100 AND 500;
SELECT * FROM Orders WHERE Status like 'P%';
SELECT * FROM Orders ORDER BY OrderDate;
SELECT UPPER(Status), LOWER(CustomerID), CONCAT(OrderID, Status), LENGTH(Total) FROM Orders;
CREATE INDEX idx_OrderID ON Orders (OrderID);
SELECT * FROM Orders WHERE OrderID = 5 ;
