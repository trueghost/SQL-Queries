USE [Intern2-DB]
GO

/****** Object:  StoredProcedure [dbo].[CategoryFetch]    Script Date: 04-07-2023 18:42:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Saurav>
-- Create date: <Create Date,,22/11/2022>
-- Description:	<Description,,CustomerFetch>
-- =============================================
CREATE PROCEDURE [dbo].[CategoryFetch]
AS
BEGIN
 SET NOCOUNT ON;
 SELECT * from dbo.Category

END
GO

