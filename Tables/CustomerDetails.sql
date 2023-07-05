USE [Intern2-DB]
GO

/****** Object:  Table [dbo].[CustomerDetails]    Script Date: 04-07-2023 18:37:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CustomerDetails](
	[CustomerId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[PhNo] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](200) NOT NULL,
	[CountryId] [int] NOT NULL,
	[StateId] [int] NOT NULL,
	[Remarks] [nvarchar](200) NOT NULL,
	[GSTEnable] [nvarchar](50) NOT NULL,
	[CreatedDate] [nvarchar](max) NOT NULL,
	[status] [int] NULL,
 CONSTRAINT [PK_CustomerDetails] PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[CustomerDetails]  WITH CHECK ADD  CONSTRAINT [FK_CustomerDetails_CountryName_CountryId] FOREIGN KEY([CountryId])
REFERENCES [dbo].[CountryName] ([Id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[CustomerDetails] CHECK CONSTRAINT [FK_CustomerDetails_CountryName_CountryId]
GO

ALTER TABLE [dbo].[CustomerDetails]  WITH CHECK ADD  CONSTRAINT [FK_CustomerDetails_State_StateId] FOREIGN KEY([StateId])
REFERENCES [dbo].[State] ([Id])
ON DELETE CASCADE
GO

ALTER TABLE [dbo].[CustomerDetails] CHECK CONSTRAINT [FK_CustomerDetails_State_StateId]
GO

