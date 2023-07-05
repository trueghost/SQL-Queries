USE [Intern2-DB]
GO

/****** Object:  StoredProcedure [dbo].[CustomerDeletion]    Script Date: 04-07-2023 18:43:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[CustomerDeletion]
(
@CustomerID int,
@Name varchar(100)
)
AS
BEGIN
IF EXISTS ( SELECT @CustomerID FROM dbo.Customer
  
  WHERE CustomerID=@CustomerID
  )
BEGIN
DELETE FROM dbo.Customer
WHERE CustomerID=@CustomerID
PRINT 'SELECTED CUSTOMER DELETED'
END
END
GO

