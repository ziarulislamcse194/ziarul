CREATE DATABASE  StockManagement

USE StockManagement


DROP TABLE Categorys

CREATE TABLE Categorys(
ID int IDENTITY (1,1),
Name VARCHAR (100)
)

INSERT INTO Categorys (Name) VALUES ('Laptop')

SELECT * FROM Categorys



--DROP TABLE Companys

CREATE TABLE Companys(
ID int IDENTITY (1,1) PRIMARY KEY,
Name VARCHAR (100)
)

INSERT INTO Companys (Name) VALUES ('RFL')

SELECT * FROM Companys


--DROP TABLE Items


CREATE TABLE Items(
ID int IDENTITY (1,1),
CategoryName VARCHAR (100) FOREIGN KEY REFERENCES Categorys(Name),
CompanyName VARCHAR (100) FOREIGN KEY REFERENCES Companys(Name),
ItemName VARCHAR (100),
ReorderLevel int IDENTITY (1,1)
)

INSERT INTO Items (CategoryName, CompanyName, ItemName, ReorderLevel) VALUES ('Laptop', 'RFL', 'Pen', '1')

SELECT * FROM Items

--DROP TABLE StockIns

CREATE TABLE StockIns(
ID int IDENTITY (1,1) PRIMARY KEY,
ReorderLevel VARCHAR (100),
AvailableQuantity VARCHAR (100),
StockInQuantity VARCHAR (100)
)

INSERT INTO StockIns (ReorderLevel, AvailableQuantity, StockInQuantity) VALUES ('1', '2', '3')

SELECT * FROM StockIns


--DROP TABLE StockOuts

CREATE TABLE StockOuts(
ID int IDENTITY (1,1) PRIMARY KEY,
CategoryName VARCHAR (100) FOREIGN KEY REFERENCES Categorys(Name),
CompanyName VARCHAR (100) FOREIGN KEY REFERENCES Companys(Name),
StockOutItem VARCHAR (100) FOREIGN KEY REFERENCES Items (ItemName),
ReorderLevel VARCHAR (50),
AvailableQuantity VARCHAR (50),
StockOutQuantity VARCHAR (50)
)

INSERT INTO StockOuts (ReorderLevel, AvailableQuantity, StockOutQuantity) VALUES ('10', '50', '100')

SELECT * FROM StockOuts

--DROP TABLE Users

CREATE TABLE Users(
ID int IDENTITY (1,1) PRIMARY KEY,
Name VARCHAR (50),
Password VARCHAR (50)
)

INSERT INTO Users (Name, Password) VALUES ('ziarulislam', 'Ziarul#@35')

SELECT * FROM Users