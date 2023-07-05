USE [Intern2-DB]
GO

/****** Object:  StoredProcedure [dbo].[ProductEntry]    Script Date: 04-07-2023 18:46:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Saurav>
-- Create date: <Create Date,22/11/2022,>
-- Description:	<Description,CUSTOMER ENTRY PROCEDURE,>
-- =============================================
CREATE PROCEDURE [dbo].[ProductEntry]
(
@Title varchar(200),
@UniqueCode	varchar(20),
@CategoryId	int,
@SubCategoryId	int,
@ShortDescription	nvarchar(500),
@Description nvarchar(50),
@Status int
)
AS
BEGIN

DECLARE @ResponseMessage nvarchar(200)='Success',@ResponseCode nvarchar(20)='001'
BEGIN
INSERT INTO dbo.Product
(

Title,
UniqueCode,
CategoryId,
SubCategoryId,
ShortDescription,
Description,
Status

)
VALUES(

@Title,
@UniqueCode,
@CategoryId,
@SubCategoryId,
@ShortDescription,
@Description,
2

)

SELECT SCOPE_IDENTITY() AS ProductID,@ResponseMessage as ResponseMessage,@ResponseCode AS ResponseCode


END

END
GO

