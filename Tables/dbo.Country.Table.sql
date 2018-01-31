USE [IData]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 2018/2/1 0:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryId] [uniqueidentifier] NOT NULL CONSTRAINT [defaultvalue_countryid]  DEFAULT (newid()),
	[CountryName] [nvarchar](200) NOT NULL,
	[CountryFullName] [nvarchar](200) NOT NULL,
	[CapitalCityId] [int] NULL,
	[Area] [decimal](18, 0) NULL,
	[Population] [bigint] NULL,
PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
