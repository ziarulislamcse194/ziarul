CREATE DATABASE StudentDB

USE StudentDB
--DROP DATABASE StudentDB

CREATE TABLE Districts(
ID int IDENTITY (1,1) PRIMARY KEY,
Name VARCHAR(50)
)

--DROP TABLE Districts

INSERT INTO Districts Values ('Dhaka')
INSERT INTO Districts Values ('Chitagong')

DELETE FROM Districts
WHERE ID = 2 

SELECT * FROM Districts

CREATE TABLE Students(
ID int IDENTITY (1,1),
RollNo VARCHAR(10),
Name VARCHAR(100),
Age int,
Address VARCHAR(MAX),
DistrictID int FOREIGN KEY REFERENCES Districts(ID)
)
--DROP TABLE Students

INSERT INTO Students (RollNo, Name, Age, Address, DistrictID) VALUES ('CSE001', 'Ali', 21, 'Mirpur',1)
INSERT INTO Students (RollNo, Name, Age, Address, DistrictID) VALUES ('CSE002', 'Arif', 22, 'Savar',2)
INSERT INTO Students (RollNo, Name, Age, Address, DistrictID) VALUES ('CSE003', 'Kabir', 20, 'Dhanmondi',2)
INSERT INTO Students (RollNo, Name, Age, Address, DistrictID) VALUES ('EEE001', 'Araf', 21, 'Uttora',1)
INSERT INTO Students (RollNo, Name, Age, Address, DistrictID) VALUES ('EEE002', 'Ali', 21, 'Motijhil',2)
INSERT INTO Students (RollNo, Name, Age, Address, DistrictID) VALUES ('EEE003', 'Snigdha', 21, 'Uttora',1)

INSERT INTO Students (RollNo, Name, Age, Address, DistrictID) VALUES ('EEE003', 'Snigdha Shaha', 20, 'Uttora',3)
INSERT INTO Students (RollNo, Name, Age, Address, DistrictID) VALUES ('EEE003', 'Abrar', 20, 'Uttora',4)

SELECT * FROM Students

UPDATE Students 
SET ID = 2
WHERE Name = 'Asad' 

DELETE Students
WHERE ID = 30 


CREATE TABLE Departments(
ID int IDENTITY (1,1) Primary Key,
Name VARCHAR(50),
Code VARCHAR(50)
)

INSERT INTO Departments Values ( 'Computer Science & Engineering','CSE')
INSERT INTO Departments Values ('Elecrical & Electronics Engineering','EEE')

INSERT INTO Departments (Name, Code) VALUES ( 'Computer Science & Engineering','CSE')

SELECT * FROM Departments

UPDATE Departments 
SET Name = '', Code = ''
WHERE ID = 9


DELETE FROM Departments

DROP TABLE  Departments


CREATE TABLE Subjects(
ID int IDENTITY (1,1),
Name VARCHAR(50),
Code VARCHAR(50)
)

INSERT INTO Subjects Values ('C++', 'CSE101' )
INSERT INTO Subjects Values ('Java', 'CSE102')
INSERT INTO Subjects Values ('OOP', 'CSE103')

INSERT INTO Subjects Values ('Electronics', 'EEE101')
INSERT INTO Subjects Values ('Phy', 'EEE102')
INSERT INTO Subjects Values ('Digital Board', 'EEE102')

--DROP TABLE Subjects 



SELECT * FROM Subjects

CREATE TABLE Marks(
ID int IDENTITY (1,1),
StudentId INT,
DepartmentId INT,
SubjectId INT,
MArks INT
)

INSERT INTO Marks VALUES (1, 1, 1, 99)
INSERT INTO Marks VALUES (1, 1, 2, 96)

INSERT INTO Marks VALUES (2, 1, 1, 83)
INSERT INTO Marks VALUES (2, 1, 3, 79)

INSERT INTO Marks VALUES (3, 1, 2, 53)
INSERT INTO Marks VALUES (3, 1, 3, 90)

INSERT INTO Marks VALUES (4, 2, 4, 100)
INSERT INTO Marks VALUES (4, 2, 5, 99)

INSERT INTO Marks VALUES (5, 2, 5, 89)
INSERT INTO Marks VALUES (5, 2, 6, 90)

INSERT INTO Marks VALUES (6, 2, 6, 79)
INSERT INTO Marks VALUES (6, 2, 4, 90)

SELECT * FROM MArks



SELECT RollNo, s.Name, Age, Address, DistrictID,  d.Name as District  FROM Students  AS s
LEFT JOIN Districts AS d ON d.ID = s.DistrictID


SELECT * FROM Students
SELECT ID, Name  FROM Districts

CREATE TABLE Departments
(
Id INT IDENTITY (1,1),
Name VARCHAR(10)
)


SELECT * FROM Departments

INSERT INTO Departments (Name) VALUES ('CSE') 
INSERT INTO Departments (Name) VALUES ('CSE') 

UPDATE Departments 
SET Name = 'EEE'
WHERE Id = 1

DELETE FROM Departments 
WHERE Id = 3

