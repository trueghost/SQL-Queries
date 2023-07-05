USE [Intern2-DB]
GO

/****** Object:  StoredProcedure [dbo].[ChangeStatus]    Script Date: 04-07-2023 18:42:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Saurav>
-- Create date: <Create Date,,22/11/2022>
-- Description:	<Description,,Status>
-- =============================================
CREATE PROCEDURE [dbo].[ChangeStatus](
@CustomerId int)
AS
BEGIN
declare @result varchar(50)
if exists (select status from dbo.CustomerDetails
where status = 1 )
begin
update dbo.CustomerDetails
set status = 2
where CustomerId = @CustomerId
set @result = 'Status  Enabled'
end
else if exists (select status from dbo.CustomerDetails
where status = 2 )
begin
update dbo.CustomerDetails
set status = 1
where CustomerId = @CustomerId
set @result = 'Status Disabled'
end
select @result as result
end
GO

