SELECT * FROM  HumanResources.EmployeePayHistory
------------------------1
----Use table [HumanResources].[EmployeePayHistory] and Write a Query to give Rank to the records based on RateChangeDate Desc. (Use Rank function to give Rank) , (select all columns in result)---------------------------------
SELECT *,Rank() OVER (ORDER BY RateChangeDate DESC) AS 'Rank AS PER RateCHange Date' FROM HumanResources.EmployeePayHistory