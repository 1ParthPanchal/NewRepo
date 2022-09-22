CREATE DATABASE SQLTEST
SELECT * FROM Product

-------------------PRODUCT TABLE-------------
CREATE TABLE Product(
ProductID INT NOT NULL ,
Name varchar(50),
Price INT NOT NULL,
Status Varchar(50),
CreatedDate Date,
PRIMARY KEY(ProductID)
)
INSERT INTO Product(
ProductID,
Name ,
Price,
Status ,
CreatedDate
)VALUES(1,'Toy',500,'InStock','2022-02-01'),(2,'Mobile Phone',18000,'InStock','2022-03-02'),(3,'Monitor',10000,'InStock','	2022-03-03'),(4,'Mouse',600,'InStock','2022-03-04')
-------------------USER TABLE-------------
CREATE TABLE  Users(
UserID INT  NOT NULL,
UserName varchar(50),
isPrime varchar(10),
PRIMARY KEY(UserID)
)
INSERT INTO Users(
UserID,UserName,isPrime
)VALUES(1,'Reema',0),(2,'Ronit',1),(3,'Megha',1),(4,'Rohit',0)
-------------------ORDER TABLE-------------
CREATE TABLE Orders(
OrderID INT NOT NULL,
UserID INT NOT NULL,
OrderDate Date,
OrderStatus varchar(10),
OrderAmount INT,
DiscountAmount INT,
PayableAmount INT
PRIMARY KEY(OrderID),
FOREIGN KEY(UserID) REFERENCES Users(UserID)
)
INSERT INTO Orders(
OrderID,
UserID,
OrderDate,
OrderStatus,
OrderAmount,
DiscountAmount,
PayableAmount
)VALUES(1,1,'2022-03-01','Placed',65000,5550,59450)
-------------------Discount TABLE-------------
CREATE TABLE Discount(
DiscountID INT  NOT NULL,
ProductID INT NOT NULL,
Discountpercentage float,
DateStart Date,
DateEnd Date

PRIMARY KEY(DiscountID),
FOREIGN KEY(ProductID) REFERENCES Product(ProductID)
)
INSERT INTO Discount(
DiscountID,
ProductID,
Discountpercentage,
DateStart,
DateEnd
)Values(1,1,15,'2022-03-01','2022-03-01'),(2,2,10,'2022-03-02','2022-03-02'),(3,4,20,'2022-07-07','2022-07-08')
-------------------OrderItem TABLE-------------
CREATE TABLE OrderItem(
OrderItemID INT  NOT NULL,
ProductID INT NOT NULL,
OrderID INT NOT NULL,
Qty   INT
PRIMARY KEY(OrderItemID),
FOREIGN KEY(ProductID) REFERENCES Product(ProductID),
FOREIGN KEY(OrderID) REFERENCES Orders(OrderID)
)
INSERT INTO OrderItem(
OrderItemID,ProductID,OrderID,Qty
)VALUES(1,1,1,2),(2,2,1,3),(3,3,1,1)

