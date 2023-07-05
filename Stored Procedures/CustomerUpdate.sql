USE [Intern2-DB]
GO

/****** Object:  StoredProcedure [dbo].[CustomerUpdate]    Script Date: 04-07-2023 18:45:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[CustomerUpdate]
(
@CustomerID int,
@Name varchar(100),
@PhNo	nvarchar(20),
@Email	nvarchar(200),
@CountryID	int,
@StateID	int,
@Remarks	nvarchar(500),
@CreatedDate nvarchar(50),
@GSTEnable	nvarchar(50)
)
AS
BEGIN
DECLARE @ResponseMessage nvarchar(200)='Success',@ResponseCode nvarchar(20)='001'
IF EXISTS ( SELECT top 1 CustomerID FROM dbo.CustomerDetails
  
  WHERE CustomerID=@CustomerID
  )
 BEGIN
UPDATE dbo.CustomerDetails SET
Name=@Name,
PhNo=@PhNo,
Email=@Email,
CountryID=@CountryID,
StateID=@StateID,
Remarks=@Remarks,
CreatedDate=@CreatedDate,
GSTEnable=@GSTEnable
WHERE CustomerID=@CustomerID
 SET @ResponseMessage='SELECTED CUSTOMER UPDATED'
 SET @ResponseCode ='002'

END
ELSE
BEGIN
SET
@ResponseMessage='FAILED'
SET
@ResponseCode='002'
END

SELECT SCOPE_IDENTITY() AS CustomerID,@ResponseMessage as ResponseMessage,@ResponseCode AS ResponseCode
END
GO

