USE [Intern2-DB]
GO

/****** Object:  StoredProcedure [dbo].[StateEntry]    Script Date: 04-07-2023 18:48:07 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[StateEntry] (
@StateName	varchar(200)
)
AS
BEGIN
DECLARE @ResponseMessage nvarchar(200)='Success',@ResponseCode nvarchar(20)='001'
BEGIN
INSERT INTO dbo.State
(
StateName
)
VALUES (
@StateName
)
 SET @ResponseMessage='State Entered'
 SET @ResponseCode ='002'
 END
END
GO

