SELECT * FROM Production.Product
Select * From Persons
ALTER Table Persons
Add EmailAddress varchar(50)
UPDATE Persons SET Phonenumber=78965 WHERE City='Ahmedabad'
UPDATE Persons SET EmailAddress='ppanchal1090.com' WHERE  City='Ahmedabad'
--------------------1-----------------------------
CREATE VIEW vw_person AS SELECT * FROM Persons
SELECT * FROM vw_person

----------------2----------------------------------
CREATE TRIGGER trg_recordd
ON [Production].[Product]
AFTER INSERT AS
BEGIN 
	Select inserted.ProductID AS ProductID,
			inserted.MakeFlag AS MakeFlag,
			inserted.ProductNumber AS  ProductNumber
		from inserted
		SELECT * FROM deleted
	INSERT INTO Production.Product(ProductID,
MakeFlag,
ProductNumber
)VALUES(1199,0,123);
END
select * from Production.Product
INSERT INTO Production.Product(ProductID,
MakeFlag,
ProductNumber
)VALUES(1199,0,123);