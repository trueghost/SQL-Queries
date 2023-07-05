USE [Intern2-DB]
GO

/****** Object:  StoredProcedure [dbo].[CountryEntry]    Script Date: 04-07-2023 18:43:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[CountryEntry] (
@CountryName	varchar(200)
)
AS
BEGIN
DECLARE @ResponseMessage nvarchar(200)='Success',@ResponseCode nvarchar(20)='001'
BEGIN
INSERT INTO dbo.CountryName
(
CountryName
)
VALUES (
@CountryName
)
 SET @ResponseMessage='State Entered'
 SET @ResponseCode ='002'
 END
END

GO

