SELECT * FROM Sales.SalesOrderDetail
SELECT  * FROM Production.ProductCostHistory

------------1.Write a Query to Find out Product wise Running Total of Line Total Column. Use Table [Sales].[SalesOrderDetail]. ---------

SELECT ProductID,SUM(LineTotal) FROM Sales.SalesOrderDetail GROUP BY ProductID


--2.Write a Query to that will return Comma separated Standard Cost based on ProductID. Use table [Production].[ProductCostHistory].--------


SELECT  ProductID
       ,STUFF((SELECT ', ' +PP.StandardCost
         FROM Production.ProductCostHistory PP
         WHERE  ProductID = PPP.ProductID
         FOR XML PATH(''), TYPE)
        .value('.','NVARCHAR(MAX)'),3,0,' ') List_Output
FROM  Production.ProductCostHistory PPP
GROUP BY  ProductID
