USE [Intern2-DB]
GO

/****** Object:  StoredProcedure [dbo].[DeleteImages]    Script Date: 04-07-2023 18:45:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[DeleteImages](
@ImageId int
)
AS
BEGIN

	SET NOCOUNT ON;
	delete from Images where ImageId=@ImageId;
END
GO

