USE [Intern2-DB]
GO

/****** Object:  StoredProcedure [dbo].[StatusChangeProduct]    Script Date: 04-07-2023 18:49:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Saurav>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[StatusChangeProduct]
       @ProductId int
	  ,@Status tinyint
AS
BEGIN
	SET NOCOUNT ON;

	UPDATE [dbo].[Product] SET [status] = @Status WHERE ProductId = @ProductId
  
END
GO

