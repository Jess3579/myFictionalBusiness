/*USE myFictionalBusiness;
GO
INSERT INTO Zipcode VALUES ('10010', 'New York', 'NY')
INSERT INTO Zipcode VALUES ('85001', 'Phoenix', 'AZ')
INSERT INTO Zipcode VALUES ('10020', 'New York', 'NY')
INSERT INTO Zipcode VALUES ('33109', 'New York', 'FL')
INSERT INTO Zipcode VALUES ('98116', 'Seattle', 'WA')
INSERT INTO Zipcode VALUES ('33119', 'Miami', 'FL')

ALTER TABLE Inventory
ADD Mounted varchar(50);*/

INSERT INTO Inventory VALUES (1, 'Mixed Media Lighthouse','Digital Artwork', '8x10',6.00,9.60,'Matted')
INSERT INTO Inventory VALUES (2, 'High contrast BW Horse','Photography', '20x24',60.00,96.00,'Matted and Framed')
INSERT INTO Inventory VALUES (3, 'Grungy Pier','Digital Artwork', '16x20',30.00,48.00,'Mounted on Wood')
INSERT INTO Inventory VALUES (4, 'High contrast Zebra','Photography', '16x20',30.00,48.00,'Mounted on Wood')
INSERT INTO Inventory VALUES (5, 'Mixed Media Bear','Digital Artwork', '16x20',10.00,16.00,'Matted')

SELECT * FROM Inventory;

INSERT INTO Locations VALUES (1,'Co-op Gallery')
INSERT INTO Locations VALUES (2,'Website')
INSERT INTO Locations VALUES (3,'Etsy')
INSERT INTO Locations VALUES (4,'Artshows')
INSERT INTO Locations VALUES (5,'Craftshows')
INSERT INTO Locations VALUES (6,'Gallery')

INSERT INTO Customers VALUES (1, 'Denzel Washington','123 Park Place','10010','den@wash.com','989-123-4567')
INSERT INTO Customers VALUES (2, 'Julia Roberts','555 Old Home Road','85001','julia@roberts.net','989-123-4568')
INSERT INTO Customers VALUES (3, 'Keanu Reeves','25 Brick Road','10020','neo@matrix.net','989-123-4569')
INSERT INTO Customers VALUES (4, 'Sophie Turner','100 Ocean Blvd.','33109','sophie@got.com','989-123-4570')
INSERT INTO Customers VALUES (5, 'Zoe Kravitz','22 New Haven','98116','zoe@kravitz.net','989-123-4571')
INSERT INTO Customers VALUES (6, 'Jennifer Lopez','89 Parkside Ave','33109','jlo@jennyontheblock.net','989-123-4572')

INSERT INTO Orders VALUES (1, '11/30/2020',1,1)
INSERT INTO Orders VALUES (2, '12/01/2020',1,2)
INSERT INTO Orders VALUES (3, '12/02/2020',2,3)
INSERT INTO Orders VALUES (4, '12/03/2020',5,4)
INSERT INTO Orders VALUES (5, '12/04/2020',4,5)
INSERT INTO Orders VALUES (6, '12/05/2020',6,5)

INSERT INTO OrderDetails VALUES (1,1,1,2)
INSERT INTO OrderDetails VALUES (2,1,2,5)
INSERT INTO OrderDetails VALUES (3,2,5,4)
INSERT INTO OrderDetails VALUES (4,2,4,5)
INSERT INTO OrderDetails VALUES (5,3,5,1)
INSERT INTO OrderDetails VALUES (6,3,4,2)
INSERT INTO OrderDetails VALUES (7,4,1,4)
INSERT INTO OrderDetails VALUES (8,5,2,1)
INSERT INTO OrderDetails VALUES (9,5,3,2)
INSERT INTO OrderDetails VALUES (10,5,4,1)
