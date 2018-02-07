USE [IData]
GO
/****** Object:  Table [dbo].[COUNTRY]    Script Date: 2017/2/8 0:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COUNTRY](
	[CountryId] [uniqueidentifier] NOT NULL,
	[DistrictLevelId] [int] NOT NULL,
	[CountryName] [nvarchar](200) NOT NULL,
	[CountryFullName] [nvarchar](200) NOT NULL,
	[CapitalCityId] [int] NULL,
	[ContinentId] [int] NULL,
 CONSTRAINT [PK__tmp_ms_x__10D1609F3E308DC9] PRIMARY KEY CLUSTERED 
(
	[CountryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[COUNTRY] ADD  CONSTRAINT [defaultvalue_countryid]  DEFAULT (newid()) FOR [CountryId]
GO
