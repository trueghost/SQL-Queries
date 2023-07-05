USE [Intern2-DB]
GO

/****** Object:  StoredProcedure [dbo].[ProductSearch]    Script Date: 04-07-2023 18:47:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Saurav>
-- Create date: <Create Date,,22/11/2022>
-- Description:	<Description,,Searching>
-- =============================================
CREATE PROCEDURE [dbo].[ProductSearch](
@Title varchar(200) = NULL
)
AS
BEGIN

SELECT [ProductId]
      ,[Title]
	  ,[UniqueCode]
	  ,[CategoryId]
	  ,[SubCategoryId]
      ,[ShortDescription]
      ,[Description]
      ,[Status]
      ,COUNT(*)OVER() AS TotalCount
     FROM [dbo].[Product] with(nolock)
	 WHERE (Title like COALESCE('%'+@Title + '%',Title))
	 ORDER BY ProductId DESC
 
END
GO

