USE [pharmeasy-2443-parth]
GO
/****** Object:  StoredProcedure [dbo].[OrderTemp]    Script Date: 31-08-2022 08:29:23 ******/
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
insert into #OrderDetails(o_Id,o_Details,Pr_Id,o_quantity,
Off_Id
)values(1,'xyz',1,25,5);

END
EXECUTE OrderTemp 