USE [Intern2-DB]
GO

/****** Object:  StoredProcedure [dbo].[LoginEntry]    Script Date: 04-07-2023 18:46:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[LoginEntry] 
(
   @UserName	varchar(200),
   @PassWord	varchar(200),
   @Name	varchar(100),
   @CreatedUserID	int,
   @CreatedDate	date,
   @CreatedDateTime	datetime2(7),
   @Status	tinyint
 )
AS
BEGIN
 INSERT INTO dbo.login
 (
   UserName,
   PassWord,
   Name,
   CreatedUserID,
   CreatedDate,
   CreatedDateTime,
   Status 
 )    
 VALUES 
 ( @UserName,
   @PassWord,
   @Name,
   @CreatedUserID,
   GETDATE(),
   GETDATE(),
   2
 )
 PRINT 'LOGIN DETAILS INSERTED'
 END
GO

