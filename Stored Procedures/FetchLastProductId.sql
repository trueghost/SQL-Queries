USE [Intern2-DB]
GO

/****** Object:  StoredProcedure [dbo].[FetchLastProductId]    Script Date: 04-07-2023 18:45:51 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[FetchLastProductId] 

AS
BEGIN
	SET NOCOUNT ON;
	SELECT IDENT_CURRENT('Product') AS last_product_id;
END
GO

