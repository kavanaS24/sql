CREATE DATABASE task4;
USE task4;


CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    PhoneNumber VARCHAR(15),
    JoinDate DATE
);
INSERT INTO Customers (FirstName, LastName, Email, PhoneNumber, JoinDate) VALUES
('Aarav', 'Sharma', 'aarav.sharma@example.com', '987-654-3210', '2024-01-15'),
('Isha', 'Patel', 'isha.patel@example.com', '987-654-3209', '2024-02-20'),
('Vivaan', 'Reddy', 'vivaan.reddy@example.com', '987-654-3208', '2024-03-05'),
('Ananya', 'Nair', 'ananya.nair@example.com', '987-654-3207', '2024-04-10'),
('Arjun', 'Kumar', 'arjun.kumar@example.com', '987-654-3206', '2024-05-25'),
('Saanvi', 'Gupta', 'saanvi.gupta@example.com', '987-654-3205', '2024-06-30'),
('Vivaan', 'Singh', 'vivaan.singh@example.com', '987-654-3204', '2024-07-15'),
('Mira', 'Joshi', 'mira.joshi@example.com', '987-654-3203', '2024-08-20'),
('Raj', 'Mehta', 'raj.mehta@example.com', '987-654-3202', '2024-09-10'),
('Kiran', 'Chopra', 'kiran.chopra@example.com', '987-654-3201', '2024-10-01'),
('Nisha', 'Khan', 'nisha.khan@example.com', '987-654-3200', '2024-11-05'),
('Arjun', 'Sharma', 'arjun.sharma@example.com', '987-654-3199', '2024-12-10'),
('Ananya', 'Kapoor', 'ananya.kapoor@example.com', '987-654-3198', '2024-01-05'),
('Saanvi', 'Rao', 'saanvi.rao@example.com', '987-654-3197', '2024-02-15'),
('Raj', 'Verma', 'raj.verma@example.com', '987-654-3196', '2024-03-25');

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    OrderDate DATE,
    Status VARCHAR(20),
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
INSERT INTO Orders (CustomerID, OrderDate, Status, TotalAmount) VALUES
(1, '2024-01-20', 'Shipped', 1500.75),
(2, '2024-02-15', 'Pending', 2000.00),
(3, '2024-03-10', 'Delivered', 895.50),
(4, '2024-04-05', 'Cancelled', 1200.00),
(5, '2024-05-22', 'Shipped', 3000.00),
(6, '2024-06-12', 'Returned', 752.00),
(7, '2024-07-25', 'Pending', 1854.45),
(8, '2024-08-08', 'Shipped', 2200.00),
(9, '2024-09-15', 'Delivered', 1460.60),
(10, '2024-10-01', 'Shipped', 989.90),
(11, '2024-11-10', 'Delivered', 600.00),
(12, '2024-12-05', 'Pending', 2575.75),
(13, '2024-01-30', 'Returned', 3150.00),
(14, '2024-02-20', 'Shipped', 1458.80),
(15, '2024-03-15', 'Delivered', 850.00);



CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(50),
    Price DECIMAL(10, 2),
    StockQuantity INT,
    Supplier VARCHAR(100)
);
INSERT INTO Products (ProductName, Category, Price, StockQuantity, Supplier) VALUES
('Laptop', 'Electronics', 99999.99, 30, 'TechSupplier Ltd.'),
('Smartphone', 'Electronics', 69999.99, 50, 'MobileCorp Pvt. Ltd.'),
('Headphones', 'Accessories', 19999.99, 100, 'SoundGear Pvt. Ltd.'),
('Keyboard', 'Accessories', 4999.99, 150, 'GadgetWorld Ltd.'),
('Mouse', 'Accessories', 2999.99, 200, 'GadgetWorld Ltd.'),
('Monitor', 'Electronics', 29999.99, 20, 'VisionTech Pvt. Ltd.'),
('Printer', 'Electronics', 14999.99, 25, 'Printables Pvt. Ltd.'),
('Desk Chair', 'Furniture', 17999.99, 15, 'OfficeFurniture Pvt. Ltd.'),
('Desk Lamp', 'Furniture', 3999.99, 40, 'HomeLighting Pvt. Ltd.'),
('Gaming Console', 'Electronics', 49999.99, 10, 'GameZone Pvt. Ltd.'),
('Tablet', 'Electronics', 39999.99, 60, 'TechSupplier Ltd.'),
('External Hard Drive', 'Electronics', 12999.99, 70, 'DataStorage Pvt. Ltd.'),
('Webcam', 'Electronics', 8999.99, 45, 'TechWorld Pvt. Ltd.'),
('Speakers', 'Accessories', 8999.99, 80, 'SoundGear Pvt. Ltd.'),
('Router', 'Electronics', 6999.99, 35, 'NetTech Solutions Pvt. Ltd.');



CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice) VALUES
(1, 1, 1, 99999.99),
(1, 3, 2, 19999.99),
(2, 2, 1, 69999.99),
(2, 4, 1, 4999.99),
(3, 5, 2, 2999.99),
(3, 6, 1, 29999.99),
(4, 7, 1, 14999.99),
(4, 8, 1, 17999.99),
(5, 9, 1, 3999.99),
(5, 10, 1, 49999.99),
(6, 11, 1, 39999.99),
(6, 12, 1, 12999.99),
(7, 13, 1, 8999.99),
(8, 14, 2, 8999.99),
(9, 15, 1, 6999.99),
(10, 1, 1, 99999.99),
(11, 2, 1, 69999.99),
(12, 3, 1, 19999.99),
(13, 4, 1, 4999.99),
(14, 5, 2, 2999.99),
(15, 6, 1, 29999.99);

SELECT 
    c.CustomerID, c.FirstName, c.LastName,
    o.OrderID, o.OrderDate, o.Status,
    p.ProductID, p.ProductName,
    od.Quantity, od.UnitPrice
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID
INNER JOIN OrderDetails od ON o.OrderID = od.OrderID
INNER JOIN Products p ON od.ProductID = p.ProductID;

SELECT 
    c.CustomerID, c.FirstName, c.LastName,
    o.OrderID, o.OrderDate, o.Status,
    p.ProductID, p.ProductName,
    od.Quantity, od.UnitPrice
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
LEFT JOIN OrderDetails od ON o.OrderID = od.OrderID
LEFT JOIN Products p ON od.ProductID = p.ProductID;

SELECT 
    c.CustomerID, c.FirstName, c.LastName,
    o.OrderID, o.OrderDate, o.Status,
    p.ProductID, p.ProductName,
    od.Quantity, od.UnitPrice
FROM Customers c
RIGHT JOIN Orders o ON c.CustomerID = o.CustomerID
RIGHT JOIN OrderDetails od ON o.OrderID = od.OrderID
RIGHT JOIN Products p ON od.ProductID = p.ProductID;

SELECT 
    c.CustomerID, c.FirstName, c.LastName,
    o.OrderID, o.OrderDate, o.Status,
    p.ProductID, p.ProductName,
    od.Quantity, od.UnitPrice
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID
LEFT JOIN OrderDetails od ON o.OrderID = od.OrderID
LEFT JOIN Products p ON od.ProductID = p.ProductID;

SELECT 
    c.CustomerID, c.FirstName, c.LastName,
    o.OrderID, o.OrderDate, o.Status,
    p.ProductID, p.ProductName,
    od.Quantity, od.UnitPrice
FROM Customers c
RIGHT JOIN Orders o ON c.CustomerID = o.CustomerID
INNER JOIN OrderDetails od ON o.OrderID = od.OrderID
INNER JOIN Products p ON od.ProductID = p.ProductID;

SELECT 
    c.CustomerID, c.FirstName, c.LastName,
    o.OrderID, o.OrderDate, o.Status,
    p.ProductID, p.ProductName,
    od.Quantity, od.UnitPrice
FROM Customers c
LEFT JOIN Orders o ON c.CustomerID = o.CustomerID
RIGHT JOIN OrderDetails od ON o.OrderID = od.OrderID
RIGHT JOIN Products p ON od.ProductID = p.ProductID;

SELECT 
    c.CustomerID, c.FirstName, c.LastName,
    o.OrderID, o.OrderDate, o.Status,
    p.ProductID, p.ProductName,
    od.Quantity, od.UnitPrice
FROM Customers c
RIGHT JOIN Orders o ON c.CustomerID = o.CustomerID
LEFT JOIN OrderDetails od ON o.OrderID = od.OrderID
LEFT JOIN Products p ON od.ProductID = p.ProductID;

