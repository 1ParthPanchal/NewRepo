USE [pharmeasy-2443-parth]
GO
/****** Object:  StoredProcedure [dbo].[OrderTemp]    Script Date: 30-08-2022 13:08:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[OrderTemp] 
AS
BEGIN
CREATE TABLE #OrderDetails(o_Id int,
o_Details varchar(255),
Pr_Id int,
o_quantity int,
Off_Id int
)
select * from #OrderDetails;
insert into #OrderDetails(o_Id,o_Details,o_quantity,Off_Id)values(1,'products',21,5);
update  #OrderDetails SET o_quantity=36 where o_Id=1;

END
EXECUTE OrderTemp 