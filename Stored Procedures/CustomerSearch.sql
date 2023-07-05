USE [Intern2-DB]
GO

/****** Object:  StoredProcedure [dbo].[CustomerSearch]    Script Date: 04-07-2023 18:44:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Saurav>
-- Create date: <Create Date,,22/11/2022>
-- Description:	<Description,,Searching>
-- =============================================
CREATE PROCEDURE [dbo].[CustomerSearch](
@Name varchar(200) = NULL,
@PhNo	varchar(20) = NULL,
@Email	nvarchar(200) = NULL
)
AS
BEGIN

SELECT  [CustomerId]
      ,[Name]
	  ,[PhNo]
	  ,[Email]
	  ,[CountryId]
      ,[StateId]
      ,[Remarks]
      ,[GSTEnable]
      ,[CreatedDate]
	  ,[status]
      ,COUNT(*)OVER() AS TotalCount
     FROM [dbo].[CustomerDetails] with(nolock)
	 WHERE (Name like COALESCE('%'+@Name + '%',Name))
	 AND (PhNo like COALESCE('%'+@PhNo + '%',PhNo))
	 AND (Email like  COALESCE('%'+@Email + '%',Email))
	 ORDER BY CustomerId DESC
 
END
GO

