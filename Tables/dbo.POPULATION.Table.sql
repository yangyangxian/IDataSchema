USE [IData]
GO
/****** Object:  Table [dbo].[POPULATION]    Script Date: 2017/2/8 0:15:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[POPULATION](
	[DistrictPopulationId] [uniqueidentifier] NOT NULL,
	[DistrictLevelId] [int] NOT NULL,
	[DistrictId] [uniqueidentifier] NOT NULL,
	[Polulation] [bigint] NOT NULL,
	[Year] [date] NULL,
	[CreateDt] [datetime] NULL,
	[LastModifiedDt] [datetime] NULL,
	[ReferenceSource] [nvarchar](500) NULL,
 CONSTRAINT [PK__CityPopu__7E634F4FE7E87E64] PRIMARY KEY CLUSTERED 
(
	[DistrictPopulationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[POPULATION] ADD  CONSTRAINT [defaultvalue_citypopulation_areaid]  DEFAULT (newid()) FOR [DistrictPopulationId]
GO
ALTER TABLE [dbo].[POPULATION] ADD  CONSTRAINT [defaultvalue_citypopulation_createdt]  DEFAULT (getdate()) FOR [CreateDt]
GO
ALTER TABLE [dbo].[POPULATION] ADD  CONSTRAINT [defaultvalue_citypopulation_lastmodifieddt]  DEFAULT (getdate()) FOR [LastModifiedDt]
GO
