USE [IData]
GO
/****** Object:  Table [dbo].[CountryArea]    Script Date: 2018/2/1 0:52:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CountryArea](
	[CountryAreaId] [uniqueidentifier] NOT NULL,
	[CountryId] [uniqueidentifier] NOT NULL,
	[Area] [bigint] NOT NULL,
	[Year] [date] NULL,
	[CreateDt] [datetime] NULL,
	[LastModifiedDt] [datetime] NULL,
	[ReferenceSource] [nvarchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[CountryAreaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[CountryArea] ADD  CONSTRAINT [defaultvalue_areaid]  DEFAULT (newid()) FOR [CountryAreaId]
GO
ALTER TABLE [dbo].[CountryArea] ADD  CONSTRAINT [defaultvalue_createdt]  DEFAULT (getdate()) FOR [CreateDt]
GO
ALTER TABLE [dbo].[CountryArea] ADD  CONSTRAINT [defaultvalue_lastmodifieddt]  DEFAULT (getdate()) FOR [LastModifiedDt]
GO
