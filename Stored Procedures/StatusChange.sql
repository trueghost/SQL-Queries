USE [Intern2-DB]
GO

/****** Object:  StoredProcedure [dbo].[StatusChange]    Script Date: 04-07-2023 18:48:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Saurav>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[StatusChange]
       @CustomerId int
	  ,@Status tinyint
AS
BEGIN
	SET NOCOUNT ON;

	UPDATE [dbo].[CustomerDetails] SET [status] = @Status WHERE CustomerId = @CustomerId
  
END
GO

