/*CREATE DATABASE myFictionalBusiness;*/

USE myFictionalBusiness
GO

CREATE TABLE Customers(
    ID int NOT NULL PRIMARY KEY,
    Name varchar(50) NOT NULL,
    Address varchar(50) NOT NULL,
    Zipcode varchar(10) NOT NULL,
    Email varchar(30) NULL,
    CellPh varchar(15) NULL
)
GO

CREATE TABLE Inventory(
    ArtworkID int NOT NULL PRIMARY KEY,
    Description varchar(200) NOT NULL,
    Medium varchar(100) NOT NULL,
    Dimensions varchar(50) NULL,
    Cost money NULL,
    Price money NULL
)
GO

CREATE TABLE Locations(
    ID int NOT NULL PRIMARY KEY,
    Name varchar(20) NOT NULL
)
GO

CREATE TABLE OrderDetails(
    ID int NOT NULL PRIMARY KEY,
    OrderID int NOT NULL,
    InventoryNumber int NOT NULL,
    Quantity int NULL
)
GO

CREATE TABLE Orders(
    ID int NOT NULL PRIMARY KEY,
    OrderDate datetime NULL,
    LocationID int NOT NULL,
    CustomerID int NOT NULL
)
GO

CREATE TABLE Zipcode(
    Zipcode varchar(10) NOT NULL PRIMARY KEY,
    City varchar(30) NOT NULL,
    State varchar(2) NOT NULL
)
GO
