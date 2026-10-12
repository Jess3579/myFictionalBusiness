/*USE myFictionalBusiness;
GO

BEGIN TRY
    BEGIN TRANSACTION;

        INSERT INTO Customers (ID, Name, Address, Zipcode, Email, CellPh)
        VALUES
        (20, 'Cindy Lou Who', '123 Main St', '98116', 'louwho@xmas.com', '231-456-7890'),
        (21, 'Frank Furter', '456 Oak Ave', '98116', 'hotdog@stadium.net', '987-654-3210'),
        (22, 'Cookie Crumb', '789 Pine Rd', '85001', 'cookies@crumble.com', '555-123-4567');

    COMMIT TRANSACTION;
END TRY

BEGIN CATCH
    ROLLBACK TRANSACTION;
    PRINT 'FAILURE: Customers were not added.';
    PRINT 'Error ' + CONVERT(varchar, ERROR_NUMBER(), 1) + ': ' + ERROR_MESSAGE();
END CATCH;
GO*/

/*SELECT * FROM Customers;
GO*/

USE myFictionalBusiness;
GO

BEGIN TRY
    BEGIN TRANSACTION;

        INSERT INTO Customers (ID, Name, Address, Zipcode, Email, CellPh)
        VALUES
        (30, 'Selena Gomez', '123 Main St', '98116', 'sgomez@music.net', '231-456-7890'),
        (31, 'Julio Jones', '456 Oak Ave', '98116', 'receiver@retiredsports.com', '987-654-3210'),
        (32, 'Happy Hour', '789 Pine Rd', '12345', 'happy@letscat.com', '555-123-4567');

    COMMIT TRANSACTION;
END TRY

BEGIN CATCH
    ROLLBACK TRANSACTION;
    PRINT 'FAILURE: Customers were not added.';
    PRINT 'Error ' + CONVERT(varchar, ERROR_NUMBER(), 1) + ': ' + ERROR_MESSAGE();
END CATCH;
GO

SELECT * FROM Customers;
