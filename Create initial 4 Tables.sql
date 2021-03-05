﻿CREATE DATABASE Sparta_Academy;

CREATE TABLE CourseCatalog
(
CourseID INT NOT NULL IDENTITY(1,1),
CourseName VARCHAR(20)NOT NULL,
Duration INT NOT NULL,
PRIMARY KEY(CourseID)
)

CREATE TABLE Academies
(
AcademyID INT NOT NULL IDENTITY(1,1),
AcademyName VARCHAR(20)NOT NULL
PRIMARY KEY(AcademyID)
)

CREATE TABLE Rooms
(
RoomID INT NOT NULL IDENTITY(1,1),
AcademyID INT FOREIGN KEY (AcademyID) REFERENCES Academies(AcademyID),
RoomName VARCHAR(20)NOT NULL,
Description VARCHAR(255)NOT NULL,
Capacity INT NOT NULL
PRIMARY KEY(RoomID)
)

CREATE TABLE Employees
(
EmployeeID INT NOT NULL IDENTITY(1,1),
FirstName VARCHAR(50)NOT NULL,
LastName VARCHAR(50)NOT NULL,
EmployeeType CHAR(1) NOT NULL,
StartDate DATE
PRIMARY KEY(EmployeeID)
);


