USE [Intern2-DB]
GO

/****** Object:  Table [dbo].[Images]    Script Date: 04-07-2023 18:39:58 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Images](
	[ImageId] [int] IDENTITY(1,1) NOT NULL,
	[ImageName] [nvarchar](200) NULL,
	[ProductId] [int] NULL,
	[ImageUrl] [nvarchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[ImageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Images]  WITH CHECK ADD FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO

