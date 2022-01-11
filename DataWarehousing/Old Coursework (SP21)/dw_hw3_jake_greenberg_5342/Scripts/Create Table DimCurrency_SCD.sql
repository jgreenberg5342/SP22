USE [AdventureWorksDW2019]
GO

/****** Object:  Table [dbo].[DimCurrency_SCD]    Script Date: 4/13/2021 2:48:30 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimCurrency_SCD](
	[CurrencyKey] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[CurrencyAlternateKey] [nchar](3) NOT NULL,
	[CurrencyName] [nvarchar](50) NOT NULL,
	[Is_Current] [bit] NULL,
)
GO


