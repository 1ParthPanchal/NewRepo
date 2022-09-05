CREATE PROCEDURE OrderTemp 
AS
BEGIN
CREATE TABLE #OrderDetails(o_Id int,
o_Details varchar(255),
Pr_Id int,
o_quantity int,
Off_Id int
)
insert into #OrderDetails(o_Id,o_Details,Pr_Id,o_quantity,
Off_Id
)values(1,'xyz',1,25,5);

END
EXECUTE OrderTemp