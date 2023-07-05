USE [Intern2-DB]
GO

/****** Object:  StoredProcedure [dbo].[SubCategoryFetch]    Script Date: 04-07-2023 18:49:55 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Saurav>
-- Create date: <Create Date,,22/11/2022>
-- Description:	<Description,,CustomerFetch>
-- =============================================
CREATE PROCEDURE [dbo].[SubCategoryFetch]
AS
BEGIN
 SET NOCOUNT ON;
 SELECT * from dbo.SubCategory

END
GO

