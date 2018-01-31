USE [IData]
GO
/****** Object:  Table [dbo].[City]    Script Date: 2018/2/1 0:52:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityId] [uniqueidentifier] NOT NULL CONSTRAINT [defaultvalue_cityid]  DEFAULT (newid()),
	[CityName] [nvarchar](200) NOT NULL,
	[CityFullName] [nvarchar](200) NOT NULL,
	[Area] [decimal](18, 0) NULL,
	[Population] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
