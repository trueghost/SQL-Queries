USE [Intern2-DB]
GO

/****** Object:  StoredProcedure [dbo].[CustomerSearchDate]    Script Date: 04-07-2023 18:44:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Saurav>
-- Create date: <Create Date,,11/12/2022>
-- Description:	<Description,,Created Date between>
-- =============================================
CREATE PROCEDURE [dbo].[CustomerSearchDate]      
@Fromdate DATETIME,@Todate DATETIME      
AS      
BEGIN      
SELECT * FROM CustomerDetails WHERE CreatedDate BETWEEN @Fromdate AND @Todate      
END   
GO

