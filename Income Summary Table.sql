USE myFictionalBusiness;
GO

/*CREATE TABLE IncomeSummary(
    ID int NOT NULL PRIMARY KEY IDENTITY,
    Date datetime,
    Description varchar(200),
    Revenue money DEFAULT 0,
    Fees money DEFAULT 0,
    LocationID int NOT NULL
);
GO*/
/*ALTER TABLE IncomeSummary
ADD CONSTRAINT FK_IncomeSummary_Location
FOREIGN KEY (LocationID)
REFERENCES Locations(ID);
GO*/

/*INSERT INTO IncomeSummary(Date, Description, Revenue, Fees, LocationID)
VALUES ('2025-04-01', 'Quarter 1 Sales/Fees', 260, 91, 1);

INSERT INTO IncomeSummary(Date, Description, Revenue, Fees, LocationID)
VALUES ('2025-08-01', 'Quarter 2 Sales/Fees', 460, 161, 1);

INSERT INTO IncomeSummary(Date, Description, Fees, LocationID)
VALUES ('2025-01-01', 'Listing Fees', 20, 3);

INSERT INTO IncomeSummary(Date, Description, Revenue, Fees, LocationID)
VALUES ('2025-01-31', 'Etsy Income/Selling,Payment,Ads Fees', 600, 147.25, 3);

INSERT INTO IncomeSummary(Date, Description, Fees, LocationID)
VALUES ('2025-06-01', 'July 4 show fee', 125, 5);

INSERT INTO IncomeSummary(Date, Description, Revenue, Fees, LocationID)
VALUES ('2025-07-10', 'Quarter 3 Sales/Fees', 1000, 500, 6);

INSERT INTO IncomeSummary(Date, Description, Revenue, Fees, LocationID)
VALUES ('2025-07-08', 'July 4th sales', 850, 0, 5);
GO

SELECT * FROM IncomeSummary;
GO*/

/*SELECT Locations.Name,
       SUM(IncomeSummary.Revenue) AS [Total Revenue],
       SUM(IncomeSummary.Fees) AS [Total Fees]
FROM IncomeSummary
JOIN Locations
    ON IncomeSummary.LocationID = Locations.ID
WHERE IncomeSummary.Date > '2025-01-01'
GROUP BY Locations.Name;
GO*/

/*CREATE PROC spIncomeReport
WITH ENCRYPTION
AS

SELECT Locations.Name,
       SUM(IncomeSummary.Revenue) AS [Total Revenue],
       SUM(IncomeSummary.Fees) AS [Total Fees]
FROM IncomeSummary
JOIN Locations
    ON IncomeSummary.LocationID = Locations.ID
WHERE IncomeSummary.Date > '2025-01-01'
GROUP BY Locations.Name;

GO*/

/*EXEC spIncomeReport;
GO*/

/*CREATE TRIGGER trgAfterInsertUpdateDelete
ON IncomeSummary
AFTER INSERT, UPDATE, DELETE
AS
BEGIN

    EXEC spIncomeReport;
END;
GO*/

/*INSERT INTO IncomeSummary(Date, Description, Revenue, Fees, LocationID)
VALUES ('2025-09-01', 'Website Fee', 0, 112, 2);
GO
INSERT INTO IncomeSummary(Date, Description, Revenue, Fees, LocationID)
VALUES ('2025-10-01', 'Etsy Income/Selling,Payment,Ads Fees', 1200, 294.25, 3);
GO*/
/*INSERT INTO IncomeSummary(Date, Description, Revenue, Fees, LocationID)
VALUES ('2025-10-29', 'Website Revenue', 1600, 0, 2);
GO*/

/*SELECT Name,
       Zipcode.City,
       Zipcode.State,
       Zipcode.Zipcode,
       CellPh
FROM Customers
JOIN ZipCode
    ON Customers.Zipcode = Zipcode.Zipcode
WHERE ID = 1;
GO*/

/*GO

CREATE FUNCTION fnCustomerID (@CustomerID int)
RETURNS TABLE
AS
RETURN
(
    SELECT Name,
           Zipcode.City,
           Zipcode.State,
           Zipcode.Zipcode,
           CellPh
    FROM Customers
    JOIN ZipCode
        ON Customers.Zipcode = Zipcode.Zipcode
    WHERE ID = @CustomerID
);
GO*/

SELECT * FROM fnCustomerID(1);
GO

SELECT * FROM fnCustomerID(2);
GO

