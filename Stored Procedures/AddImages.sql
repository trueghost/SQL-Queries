USE [Intern2-DB]
GO

/****** Object:  StoredProcedure [dbo].[AddImages]    Script Date: 04-07-2023 18:41:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddImages]
	
	        @ProductId int
           ,@ImageName varchar(300)
		   ,@ImageUrl varchar(300)

AS
BEGIN

	SET NOCOUNT ON;


	INSERT INTO [dbo].[Images]
           (
		    [ProductId]
           ,[ImageName]
		   ,[ImageUrl]
		   )
     VALUES
           (
		    @ProductId
           ,@ImageName
		   ,@ImageUrl

		   )


END
GO

