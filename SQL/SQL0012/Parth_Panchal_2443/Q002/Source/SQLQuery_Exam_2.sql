SELECT  *FROM Product
SELECT  *FROM  Users
SELECT  *FROM Orders
SELECT  *FROM Discount
SELECT  *FROM OrderItem

---------------------1------------------------------
CREATE VIEW ord_prr AS SELECT * FROM Product WHERE ProductID NOT IN (SELECT ProductID FROM OrderItem) 
Select * FROM ord_prr
--------------------------2--------------------------
CREATE VIEW dis AS SELECT * FROM Product WHERE ProductID NOT IN (SELECT ProductID FROM Discount) 
SELECT * FROM dis
----------------------------3--------------------------------
CREATE VIEW stock AS SELECT ProductID FROM Product WHERE Status='InStock' AND CreatedDate>= cast(dateadd(day, -2, CreatedDate) as date)
SELECT * FROM stock
----------4--------------------
CREATE VIEW reporttt AS SELECT O.OrderID, U.Username,P.Name ,O.DiscountAmount AS 'Discount', O.OrderAmount As 'Amount', O.PayableAmount AS 'NetAmount' FROM Orders O JOIN Users U ON O.UserID=U.UserId JOIN Product P on P.ProductID = U.UserID
SELECT * FROM reporttt