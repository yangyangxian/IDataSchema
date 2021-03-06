USE [IData]
GO
/****** Object:  Table [dbo].[DISTRICT_LEVEL]    Script Date: 2017/2/8 0:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DISTRICT_LEVEL](
	[DistrictLevelId] [int] NOT NULL,
	[DistrictLevelName] [nvarchar](100) NULL,
	[DistrictLevelCode] [int] NULL,
 CONSTRAINT [PK_District] PRIMARY KEY CLUSTERED 
(
	[DistrictLevelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
