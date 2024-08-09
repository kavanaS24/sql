CREATE DATABASE sat;
USE sat;



CREATE TABLE Users (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Username VARCHAR(50) UNIQUE NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    PasswordHash VARCHAR(255) NOT NULL,
    CreatedAt DATETIME DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO Users (Username, Email, PasswordHash) VALUES
('ajaykumar', 'ajay.kumar@example.com', 'hash1'),
('sunitadevi', 'sunitadevi@example.com', 'hash2'),
('rahulverma', 'rahul.verma@example.com', 'hash3'),
('neelamrani', 'neelam.rani@example.com', 'hash4'),
('rohitsharma', 'rohit.sharma@example.com', 'hash5'),
('preetibedi', 'preeti.bedi@example.com', 'hash6'),
('amitjain', 'amit.jain@example.com', 'hash7'),
('komalrawat', 'komal.rawat@example.com', 'hash8'),
('vinaykumar', 'vinay.kumar@example.com', 'hash9'),
('ishaagarwal', 'isha.agarwal@example.com', 'hash10'),
('rajeshpatel', 'rajesh.patel@example.com', 'hash11'),
('anupamasingh', 'anupama.singh@example.com', 'hash12'),
('deepakmehta', 'deepak.mehta@example.com', 'hash13'),
('kritikasingh', 'kritika.singh@example.com', 'hash14'),
('sharadbhardwaj', 'sharad.bhardwaj@example.com', 'hash15'),
('kanchansharma', 'kanchan.sharma@example.com', 'hash16'),
('rakeshchauhan', 'rakesh.chauhan@example.com', 'hash17'),
('mahimagupta', 'mahi.gupta@example.com', 'hash18'),
('tusharjain', 'tushar.jain@example.com', 'hash19'),
('nishapandey', 'nisha.pandey@example.com', 'hash20');

CREATE TABLE UserProfiles (
    ProfileID INT PRIMARY KEY AUTO_INCREMENT,
    UserID INT UNIQUE NOT NULL,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DateOfBirth DATE,
    Address VARCHAR(255),
    FOREIGN KEY (UserID) REFERENCES Users(UserID) ON DELETE CASCADE
);
INSERT INTO UserProfiles (UserID, FirstName, LastName, DateOfBirth, Address) VALUES
(1, 'Ajay', 'Kumar', '1990-01-15', '12, Street A, Delhi'),
(2, 'Sunita', 'Devi', '1985-02-20', '34, Street B, Mumbai'),
(3, 'Rahul', 'Verma', '1992-03-05', '56, Street C, Bangalore'),
(4, 'Neelam', 'Rani', '1988-04-10', '78, Street D, Chennai'),
(5, 'Rohit', 'Sharma', '1991-05-25', '90, Street E, Hyderabad'),
(6, 'Preeti', 'Bedi', '1993-06-30', '21, Street F, Pune'),
(7, 'Amit', 'Jain', '1987-07-15', '43, Street G, Kolkata'),
(8, 'Komal', 'Rawat', '1995-08-20', '65, Street H, Jaipur'),
(9, 'Vinay', 'Kumar', '1989-09-10', '87, Street I, Ahmedabad'),
(10, 'Isha', 'Agarwal', '1990-10-01', '109, Street J, Lucknow'),
(11, 'Rajesh', 'Patel', '1986-11-05', '121, Street K, Surat'),
(12, 'Anupama', 'Singh', '1994-12-10', '143, Street L, Kanpur'),
(13, 'Deepak', 'Mehta', '1991-01-05', '165, Street M, Patna'),
(14, 'Kritika', 'Singh', '1992-02-15', '187, Street N, Indore'),
(15, 'Sharad', 'Bhardwaj', '1990-03-25', '209, Street O, Bhopal'),
(16, 'Kanchan', 'Sharma', '1995-04-10', '231, Street P, Nagpur'),
(17, 'Rakesh', 'Chauhan', '1987-05-30', '253, Street Q, Vadodara'),
(18, 'Mahi', 'Gupta', '1993-06-15', '275, Street R, Agra'),
(19, 'Tushar', 'Jain', '1990-07-05', '297, Street S, Ranchi'),
(20, 'Nisha', 'Pandey', '1994-08-25', '319, Street T, Amritsar');


CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentName VARCHAR(100) NOT NULL
);

INSERT INTO Departments (DepartmentName) VALUES
('HR'),
('Finance'),
('Engineering'),
('Marketing'),
('Sales'),
('IT'),
('Administration'),
('Customer Service'),
('Logistics'),
('Legal');



CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    DepartmentID INT,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    HireDate DATE NOT NULL,
    Position VARCHAR(50),
    Salary DECIMAL(10, 2),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID) 
);
INSERT INTO Employees (DepartmentID, FirstName, LastName, HireDate, Position, Salary) VALUES
(1, 'Amit', 'Sharma', '2022-01-10', 'HR Manager', 70000.00),
(2, 'Sneha', 'Patel', '2021-02-15', 'Accountant', 60000.00),
(3, 'Ravi', 'Mehta', '2020-03-20', 'Software Engineer', 80000.00),
(4, 'Pooja', 'Singh', '2019-04-25', 'Marketing Specialist', 55000.00),
(5, 'Karan', 'Kumar', '2023-05-30', 'Sales Executive', 65000.00),
(6, 'Neha', 'Agarwal', '2022-06-10', 'IT Support', 62000.00),
(7, 'Raj', 'Gupta', '2021-07-15', 'Office Manager', 67000.00),
(8, 'Tanu', 'Sharma', '2020-08-20', 'Customer Service Rep', 58000.00),
(9, 'Ankit', 'Jain', '2023-09-25', 'Logistics Coordinator', 63000.00),
(10, 'Ritika', 'Bedi', '2022-10-05', 'Legal Advisor', 72000.00),
(11, 'Shiv', 'Rao', '2021-11-10', 'HR Assistant', 55000.00),
(12, 'Ayesha', 'Khan', '2020-12-15', 'Finance Analyst', 65000.00),
(13, 'Deepak', 'Singh', '2023-01-20', 'Junior Developer', 60000.00),
(14, 'Sonal', 'Verma', '2022-02-25', 'Content Writer', 57000.00),
(15, 'Manoj', 'Chopra', '2021-03-30', 'Project Manager', 75000.00),
(16, 'Rashmi', 'Gupta', '2020-04-05', 'Receptionist', 53000.00),
(17, 'Gaurav', 'Sharma', '2023-05-10', 'Data Analyst', 66000.00),
(18, 'Simran', 'Kaur', '2022-06-15', 'Admin Assistant', 54000.00),
(19, 'Sandeep', 'Agarwal', '2021-07-20', 'Sales Manager', 68000.00),
(20, 'Jaya', 'Sinha', '2020-08-25', 'Customer Support Lead', 59000.00);

CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY AUTO_INCREMENT,
    CategoryName VARCHAR(100) NOT NULL
);
INSERT INTO Categories (CategoryName) VALUES
('Electronics'),
('Furniture'),
('Clothing'),
('Books'),
('Groceries'),
('Sports'),
('Toys'),
('Automotive'),
('Health'),
('Beauty');


CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    CategoryID INT,
    ProductName VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    StockQuantity INT,
    Supplier VARCHAR(100),
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID) ON DELETE SET NULL
);
INSERT INTO Products (CategoryID, ProductName, Price, StockQuantity, Supplier) VALUES
(1, 'Laptop', 65000.00, 25, 'TechWorld Ltd.'),
(2, 'Office Chair', 4000.00, 50, 'FurniCo Ltd.'),
(3, 'Shirt', 1200.00, 100, 'FashionHub'),
(4, 'Cookbook', 500.00, 75, 'ReadMore Books'),
(5, 'Rice', 70.00, 200, 'GroceryMart'),
(6, 'Cricket Bat', 1500.00, 30, 'SportsPlus'),
(7, 'Doll', 800.00, 60, 'ToyLand'),
(8, 'Car Battery', 3500.00, 20, 'AutoSupplies'),
(9, 'Vitamin C Tablets', 300.00, 150, 'HealthCare Ltd.'),
(10, 'Lipstick', 500.00, 80, 'BeautyEssentials'),
(11, 'Smartphone', 25000.00, 40, 'MobileZone'),
(12, 'Table Lamp', 1500.00, 45, 'LightUp'),
(13, 'Jeans', 1800.00, 90, 'FashionHub'),
(14, 'Novel', 600.00, 65, 'BookNook'),
(15, 'Flour', 50.00, 180, 'GroceryMart'),
(16, 'Tennis Racket', 2200.00, 25, 'SportsPlus'),
(17, 'Toy Car', 500.00, 70, 'ToyLand'),
(18, 'Engine Oil', 1200.00, 15, 'AutoSupplies'),
(19, 'Pain Relief Tablets', 150.00, 100, 'HealthCare Ltd.'),
(20, 'Face Cream', 600.00, 90, 'BeautyEssentials');

CREATE TABLE Students (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    StudentName VARCHAR(100) NOT NULL,
    EnrollmentDate DATE NOT NULL
);
INSERT INTO Students (StudentName, EnrollmentDate) VALUES
('Amit Kumar', '2024-01-10'),
('Sunita Sharma', '2024-02-20'),
('Rajesh Patel', '2024-03-05'),
('Pooja Gupta', '2024-04-15'),
('Vikram Singh', '2024-05-25'),
('Nisha Rao', '2024-06-30'),
('Suresh Mehta', '2024-07-15'),
('Kavita Jain', '2024-08-20'),
('Arjun Verma', '2024-09-10'),
('Maya Yadav', '2024-10-01'),
('Deepak Rawat', '2024-11-05'),
('Rani Singh', '2024-12-10'),
('Aarti Sharma', '2024-01-30'),
('Rohit Chauhan', '2024-02-15'),
('Shalini Gupta', '2024-03-25'),
('Vijay Patel', '2024-04-10'),
('Pankaj Mehta', '2024-05-30'),
('Meena Agarwal', '2024-06-15'),
('Gaurav Sharma', '2024-07-05'),
('Neha Gupta', '2024-08-25');

INSERT INTO Courses (CourseName, Credits) VALUES
('Mathematics', 3),
('Computer Science', 4),
('Physics', 3),
('Chemistry', 4),
('Biology', 3),
('English', 3),
('History', 3),
('Economics', 4),
('Political Science', 3),
('Sociology', 3);


CREATE TABLE Courses (
    CourseID INT PRIMARY KEY AUTO_INCREMENT,
    CourseName VARCHAR(100) NOT NULL,
    Credits INT NOT NULL
);
INSERT INTO Courses (CourseName, Credits) VALUES
('Mathematics', 3),
('Computer Science', 4),
('Physics', 3),
('Chemistry', 4),
('Biology', 3),
('English', 3),
('History', 3),
('Economics', 4),
('Political Science', 3),
('Sociology', 3);

CREATE TABLE Enrollments (
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE NOT NULL,
    PRIMARY KEY (StudentID, CourseID),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID) ON DELETE CASCADE,
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID) ON DELETE CASCADE
);
INSERT INTO Enrollments (StudentID, CourseID, EnrollmentDate) VALUES
(1, 1, '2024-01-12'),
(1, 2, '2024-01-15'),
(2, 3, '2024-02-25'),
(2, 4, '2024-02-28'),
(3, 5, '2024-03-10'),
(3, 6, '2024-03-12'),
(4, 7, '2024-04-18'),
(4, 8, '2024-04-20'),
(5, 9, '2024-05-30'),
(5, 10, '2024-05-31'),
(6, 1, '2024-06-05'),
(6, 3, '2024-06-08'),
(7, 2, '2024-07-10'),
(7, 4, '2024-07-12'),
(8, 5, '2024-08-15'),
(8, 6, '2024-08-20'),
(9, 7, '2024-09-10'),
(9, 8, '2024-09-12'),
(10, 9, '2024-10-05'),
(10, 10, '2024-10-10');

UPDATE Employees
SET Salary = CASE
    WHEN Position = 'HR Manager' THEN Salary * 1.10
    WHEN Position = 'Accountant' THEN Salary * 1.05
    WHEN Position = 'Software Engineer' THEN Salary * 1.07
    ELSE Salary
END;
SELECT * FROM Employees
LIMIT 10 OFFSET 5;
SELECT DepartmentID, AVG(Salary) AS AverageSalary
FROM Employees
GROUP BY DepartmentID
HAVING AVG(Salary) > 60000;
SELECT * FROM Products
ORDER BY Price DESC;

