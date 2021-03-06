USE [IData]
GO
/****** Object:  Table [dbo].[AREA]    Script Date: 2017/2/8 0:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AREA](
	[DistrictAreaId] [uniqueidentifier] NOT NULL,
	[DistrictLevelId] [int] NOT NULL,
	[DistrictId] [uniqueidentifier] NOT NULL,
	[Area] [bigint] NOT NULL,
	[Year] [date] NULL,
	[CreateDt] [datetime] NULL,
	[LastModifiedDt] [datetime] NULL,
	[ReferenceSource] [nvarchar](500) NULL,
 CONSTRAINT [PK__CityArea__B7D3227DCC792FAD] PRIMARY KEY CLUSTERED 
(
	[DistrictAreaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[AREA] ADD  CONSTRAINT [defaultvalue_cityarea_areaid]  DEFAULT (newid()) FOR [DistrictAreaId]
GO
ALTER TABLE [dbo].[AREA] ADD  CONSTRAINT [defaultvalue_cityarea_createdt]  DEFAULT (getdate()) FOR [CreateDt]
GO
ALTER TABLE [dbo].[AREA] ADD  CONSTRAINT [defaultvalue_cityarea_lastmodifieddt]  DEFAULT (getdate()) FOR [LastModifiedDt]
GO
