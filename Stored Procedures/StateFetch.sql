USE [Intern2-DB]
GO

/****** Object:  StoredProcedure [dbo].[StateFetch]    Script Date: 04-07-2023 18:48:27 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Saurav>
-- Create date: <Create Date,,22/11/2022>
-- Description:	<Description,,CustomerFetch>
-- =============================================
CREATE PROCEDURE [dbo].[StateFetch]
AS
BEGIN
 SET NOCOUNT ON;
 SELECT * from dbo.State

END
GO

