USE [Intern2-DB]
GO

/****** Object:  Table [dbo].[Product]    Script Date: 04-07-2023 18:40:17 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NULL,
	[Uniquecode] [nvarchar](50) NULL,
	[CategoryId] [int] NULL,
	[SubCategoryId] [int] NULL,
	[ShortDescription] [nvarchar](100) NULL,
	[Description] [nvarchar](200) NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([CategoryId])
GO

ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([SubCategoryId])
REFERENCES [dbo].[SubCategory] ([SubCategoryId])
GO

