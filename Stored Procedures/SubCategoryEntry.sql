USE [Intern2-DB]
GO

/****** Object:  StoredProcedure [dbo].[SubCategoryEntry]    Script Date: 04-07-2023 18:49:35 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SubCategoryEntry] (
@SubId int,
@SubCategoryName	varchar(200)
)
AS
BEGIN
DECLARE @ResponseMessage nvarchar(200)='Success',@ResponseCode nvarchar(20)='001'
BEGIN
INSERT INTO dbo.SubCategory
(
SubCategoryId,
SubCategoryName
)
VALUES (
@SubId,
@SubCategoryName
)
 SET @ResponseMessage='State Entered'
 SET @ResponseCode ='002'
 END
 END
GO

