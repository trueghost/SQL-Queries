USE [Intern2-DB]
GO

/****** Object:  StoredProcedure [dbo].[CategoryEntry]    Script Date: 04-07-2023 18:41:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CategoryEntry] (
@CategoryId int,
@CategoryName	varchar(200)
)
AS
BEGIN
DECLARE @ResponseMessage nvarchar(200)='Success',@ResponseCode nvarchar(20)='001'
BEGIN
INSERT INTO dbo.Category
(
CategoryId,
CategoryName
)
VALUES (
@CategoryId,
@CategoryName
)
SELECT SCOPE_IDENTITY() AS last_product_id;
 SET @ResponseMessage='Category Entered'
 SET @ResponseCode ='002'
 END
 END
GO

