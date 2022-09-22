SELECT * FROM Production.Product
SELECT * FROM  Production.ProductCostHistory
------------------------------1.Create a view that will return ProductID, Name, ProductNumber,StandardCost columns using this tables.-----------------------------
CREATE VIEW vw_return AS SELECT PP.ProductID,PP.Name,PP.ProductNumber,PCP.StandardCost from Production.Product PP JOIN Production.ProductCostHistory PCP  ON PP.ProductID=PCP.ProductID
SELECT * FROM vw_return

------------------------2.Write a Query to retrieve FirstName, LastName and Code from below JSON Data.----------------------------
DECLARE @JSONData AS NVARCHAR(4000)

SET @JSONData = N'{

       "FirstName":"Jignesh",

       "LastName":"Trivedi",

       "Code":"CCEEDD"

    }'

SELECT FirstName,LastName,Code FROM OPENJSON(@JSONData)
WITH
(
FirstName Varchar(50) '$.FirstName',
LastName Varchar(50) '$.LastName',
Code Varchar(20) '$.Code'
);
