USE [Intern2-DB]
GO

/****** Object:  StoredProcedure [dbo].[CustomerEntry]    Script Date: 04-07-2023 18:44:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Saurav>
-- Create date: <Create Date,22/11/2022,>
-- Description:	<Description,CUSTOMER ENTRY PROCEDURE,>
-- =============================================
CREATE PROCEDURE [dbo].[CustomerEntry]
(
@Name varchar(200),
@PhNo	varchar(20),
@Email	nvarchar(200),
@CountryID	int,
@StateID	int,
@Remarks	nvarchar(500),
@CreatedDate nvarchar(50),
@GSTEnable	nvarchar(50),
@Status int
)
AS
BEGIN

DECLARE @ResponseMessage nvarchar(200)='Success',@ResponseCode nvarchar(20)='001'
IF EXISTS ( SELECT top 1 CustomerID FROM dbo.CustomerDetails
  
  WHERE PhNo=@PhNo 
  )
 BEGIN

 SET @ResponseMessage='Phone Number Exists now checking for email'
 SET @ResponseCode ='002'
 END
 ELSE IF EXISTS (SELECT top 1 CustomerID FROM dbo.CustomerDetails
  
  WHERE Email=@Email )
  BEGIN
   SET @ResponseMessage='Both Email and Phone Number already exists'
 SET @ResponseCode ='003'
  END
ELSE
BEGIN
INSERT INTO dbo.CustomerDetails
(

Name,
PhNo,
Email,
CountryID,
StateID,
Remarks,
GSTEnable,
CreatedDate,
Status

)
VALUES(

@Name,
@PhNo,
@Email,
@CountryID,
@StateID,
@Remarks,
@GSTEnable,
@CreatedDate,
2

)

SELECT SCOPE_IDENTITY() AS CustomerID,@ResponseMessage as ResponseMessage,@ResponseCode AS ResponseCode


END

END
GO

