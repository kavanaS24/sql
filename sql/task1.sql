CREATE DATABASE task1;
USE task1;
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100) UNIQUE,
    Category VARCHAR(50),
    Price INT ,
    Stock INT);
  
INSERT INTO Products (ProductID, ProductName, Category, Price, Stock) VALUES
(1, 'Laptop', 'Electronics', 999, 10),
(2, 'Smartphone', 'Electronics', 499, 20),
(3, 'Coffee Maker', 'Appliances', 300, 15),
(4, 'Desk Chair', 'Furniture', 149, 30),
(5, 'Headphones', 'Electronics', 149, 25);
ALTER TABLE Products ADD CONSTRAINT unique_product_Name UNIQUE (ProductName);
ALTER TABLE Products DROP CONSTRAINT unique_product_name;
USE task1;
CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Credits INT CHECK (Credits >= 1 AND Credits <= 5),
    Instructor VARCHAR(100),
    MaxStudents INT CHECK (MaxStudents > 0)
);

INSERT INTO Courses (CourseID, CourseName, Credits, Instructor, MaxStudents) VALUES
(1, 'Database Systems', 3, 'Dr.robort', 30),
(2, 'Algorithms', 4, 'Ritesh', 25),
(3, 'Operating Systems', 3, 'Dr. Suma', 30),
(4, 'Networks', 4, 'Dr.Harish', 20),
(5, 'Artificial Intelligence', 5, 'Dr.Vani', 15);
ALTER TABLE Courses ADD CONSTRAINT unique_course_name UNIQUE (CourseName);
ALTER TABLE Courses DROP CONSTRAINT unique_course_name;
USE task1;
CREATE TABLE students (
    student_id INT PRIMARY KEY,                  
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    course_id INT,                              
    enrollment_date DATE
);
ALTER TABLE students
ADD CONSTRAINT foreignkey_course
FOREIGN KEY (course_id) REFERENCES students(course_id);
ALTER TABLE students
ADD CONSTRAINT unique_student_name
UNIQUE (first_name, last_name);
ALTER TABLE students
DROP CONSTRAINT foreignkey_course;
ALTER TABLE students
DROP CONSTRAINT unique_student_name;
INSERT INTO students (student_id, first_name, last_name, course_id, enrollment_date) VALUES
(1, 'Emma', 'Williams', 1, '2024-01-15'),
(2, 'Liam', 'Brown', 2, '2024-02-20'),
(3, 'Olivia', 'Jones', 3, '2024-03-10'),
(4, 'Noah', 'Smith', 4, '2024-04-25'),
(5, 'Sophia', 'Davis', 5, '2024-05-30');
USE task1;
CREATE TABLE Office (
    OfficeID INT PRIMARY KEY,
    OfficeName VARCHAR(100) NOT NULL UNIQUE,
    Location VARCHAR(100),
    ManagerID INT,
    EstablishedDate DATE 
);
INSERT INTO Office (OfficeID, OfficeName, Location, ManagerID, EstablishedDate) VALUES
(1, 'Headquarters', 'New York', 101, '2000-05-15'),
(2, 'Branch Office', 'San Francisco', 102, '2010-08-21'),
(3, 'Regional Office', 'Chicago', 103, '2015-11-30'),
(4, 'Satellite Office', 'Los Angeles', 104, '2018-04-10'),
(5, 'Remote Office', 'Seattle', 105, '2020-07-01');
ALTER TABLE Office
ADD CONSTRAINT unique_Location UNIQUE (Location);
ALTER TABLE Office
DROP CONSTRAINT unique_Location;
ALTER TABLE Office
ADD CONSTRAINT foreignkey_Manager FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID);
ALTER TABLE Office
DROP CONSTRAINT foreignkey_Manager;

show table status;