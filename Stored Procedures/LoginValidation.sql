USE [Intern2-DB]
GO

/****** Object:  StoredProcedure [dbo].[LoginValidation]    Script Date: 04-07-2023 18:46:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Saurav>
-- Create date: <Create Date,,22/11/2022>
-- Description:	<Description,,Login Validation>
-- =============================================
CREATE PROCEDURE [dbo].[LoginValidation]
(
   @UserName	varchar(200),
   @PassWord	varchar(200)
)

AS
BEGIN
DECLARE @ResponseMessage nvarchar(200)='Success', @ResponseCode nvarchar(20)='001'

 IF EXISTS ( SELECT UserName,PassWord FROM dbo.login
  
  WHERE UserName=@UserName AND PassWord=@PassWord
  )
  BEGIN
     SET @ResponseMessage='LOGIN VALIDATED'
     SET @ResponseCode ='002'
   END

 ELSE
 BEGIN
     SET @ResponseMessage='LOGIN NOT VALIDATED'
     SET @ResponseCode ='003'
	END
	SELECT SCOPE_IDENTITY() AS UserID,@ResponseMessage as ResponseMessage,@ResponseCode AS ResponseCode
END
GO

