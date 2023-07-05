USE [Intern2-DB]
GO

/****** Object:  Table [dbo].[SubCategory]    Script Date: 04-07-2023 18:40:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SubCategory](
	[SubCategoryId] [int] NOT NULL,
	[SubCategoryName] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[SubCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

