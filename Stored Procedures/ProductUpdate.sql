USE [Intern2-DB]
GO

/****** Object:  StoredProcedure [dbo].[ProductUpdate]    Script Date: 04-07-2023 18:47:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[ProductUpdate]
(
@ProductId int,
@Title nvarchar(100),
@Uniquecode	nvarchar(20),
@CategoryId	int,
@SubCategoryId	int,
@ShortDescription	nvarchar(200),
@Description	nvarchar(500)
)
AS
BEGIN
DECLARE @ResponseMessage nvarchar(200)='Success',@ResponseCode nvarchar(20)='001'
IF EXISTS ( SELECT top 1 ProductId FROM dbo.Product
  
  WHERE ProductId=@ProductId
  )
 BEGIN
UPDATE dbo.Product SET
Title=@Title,
Uniquecode=@Uniquecode,
CategoryId=@CategoryId,
SubCategoryId=@SubCategoryId,
ShortDescription=@ShortDescription,
Description=@Description
WHERE ProductId=@ProductId
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

SELECT SCOPE_IDENTITY() AS ProductId,@ResponseMessage as ResponseMessage,@ResponseCode AS ResponseCode
END
GO

