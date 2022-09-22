SELECT  *FROM Product
SELECT  *FROM  Users
SELECT  *FROM Orders
SELECT  *FROM Discount
SELECT  *FROM OrderItem
-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Parth Panchal>
-- Create date: <2022-07-08>
-- Description:	<SP>
-- =============================================
CREATE PROCEDURE sp_order
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @StudentData NVARCHAR(MAX)
SET @StudentData = N'[
{"ProductID":"4","UserID":"2","Qty":"2","OrderDate":"2022-07-08"},
{"ProductID":"3","UserID":"2","Qty":"2","OrderDate":"2022-07-08"}
]';

SELECT ProductID,UserID,Qty,OrderDate FROM OPENJSON(@StudentData)
WITH (
ProductID INT '$.ProductID',
UserID INT '$.UserID',
Qty INT '$.Qty',
OrderDate Date '$.OrderDate'


);



    -- Insert statements for procedure here

END
GO
EXEC sp_order
------------------------------------------------------------------insert the record in the order and orderitem table------------------------

-----------------FUNCTION FOR calculate OrderAmount based ProductPrice and Qty------


CREATE FUNCTION CPPT(@price INT,@qty INT)
RETURNS INT
AS
BEGIN
RETURN (SELECt @price * @qty)
END


-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Parth Panchal>
-- Create date: <2022-07-08>
-- Description:	<SP>
-- =============================================
CREATE PROCEDURE sp_orders
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	DECLARE @OrderItem NVARCHAR(MAX)
SET @OrderItem = N'[
{"OrderItemID":"4","ProductID":"4","OrderID":"2","Qty":"2"},
{"OrderItemID":"5","ProductID":"3","OrderID":"2","Qty":"2"},

]';

SELECT OrderItemID,ProductID,OrderID,Qty FROM OPENJSON(@OrderItem)
WITH (
OrderItemID INT '$.OrderItemID',
ProductID INT '$.ProductID',
OrderID INT '$.OrderID',
Qty INT '$.Qty'


);

    -- Insert statements for procedure here

END
GO
EXEC  sp_orders

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE TYPE [dbo].[ordersType] AS TABLE(
		[OrderID] [int] NOT NULL,
		[UserID] [INT] NOT NULL)

CREATE PROCEDURE [dbo].[Insert_Orders]
	@tblOrders ordersType READONLY
AS
BEGIN
		SET NOCOUNT ON;

		INSERT INTO Orders(OrderID,UserID,OrderDate,OrderStatus,OrderAmount,DiscountAmount,PayableAmount)
		SELECT * FROM Orders
END
DECLARE @tblOrders ordersType
INSERT INTO @tblOrders
SELECT 2,2
UNION
SELECT 3,3

EXEC[dbo].[Insert_Orders] @tblOrders
SELECT * FROM Orders
DELETE  FROM Orders WHERE OrderID=2
INSERT INTO Orders(OrderID,UserID)VALUES(2,2)
