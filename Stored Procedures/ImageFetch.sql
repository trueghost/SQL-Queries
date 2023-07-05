USE [Intern2-DB]
GO

/****** Object:  StoredProcedure [dbo].[ImageFetch]    Script Date: 04-07-2023 18:46:09 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Saurav>
-- Create date: <Create Date,,22/11/2022>
-- Description:	<Description,,CustomerFetch>
-- =============================================
CREATE PROCEDURE [dbo].[ImageFetch]
AS
BEGIN
 SET NOCOUNT ON;
 SELECT * from dbo.Images

END
GO

