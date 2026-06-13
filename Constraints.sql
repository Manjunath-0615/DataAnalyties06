CREATE DATABASE CollegeDB;
use CollegeDB;
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Branch VARCHAR(30),
    Marks INT
);
INSERT INTO Student
VALUES
(101, 'vivek', 20, 'CSE', 85),
(102, 'nanda', 21, 'DS', 90),
(103, 'Arjun', 19, 'ECE', 78),
(104, 'Sneha', 20, 'CSE', 88);
SELECT * FROM Student;
CREATE TABLE Dept (
    StudentID INT NOT NULL,
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(20),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);
INSERT	INTO Dept
VALUES
(101,001,"ds"),
(102,002,"cs");
SELECT * FROM dept;
create database sales1;
use sales1;
create table sales2(
City varchar(20),
PaymentTier int,
Age	int
);

