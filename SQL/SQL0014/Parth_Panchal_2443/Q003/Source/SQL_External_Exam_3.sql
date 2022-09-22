SELECT * FROM HumanResources.Employee
SELECT * FROM Person.Person

SELECT * FROM 
(
	SELECT HE.JobTitle,COUNT(*), PP.FirstName,PP.LastName ,HE.HireDate FROM HumanResources.Employee HE JOIN  Person.Person PP ON HE.BusinessEntityID=PP.BusinessEntityID GROUP BY PP.FirstName,HE.BusinessEntityID,PP.LastName,HE.HireDate,HE.JobTitle
)AS [FirstName Derived Table] 
SELECT JobTitle,COUNT(*) FROM HumanResources.Employee GROUP BY JobTitle 