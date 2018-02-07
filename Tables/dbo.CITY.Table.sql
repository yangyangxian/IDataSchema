USE [IData]
GO
/****** Object:  Table [dbo].[CITY]    Script Date: 2017/2/8 0:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CITY](
	[CityId] [uniqueidentifier] NOT NULL,
	[DistrictLevelId] [int] NOT NULL,
	[CityName] [nvarchar](200) NOT NULL,
	[CityFullName] [nvarchar](200) NOT NULL,
	[CountryId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK__City__F2D21B76069874CB] PRIMARY KEY CLUSTERED 
(
	[CityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[CITY] ADD  CONSTRAINT [defaultvalue_cityid]  DEFAULT (newid()) FOR [CityId]
GO
