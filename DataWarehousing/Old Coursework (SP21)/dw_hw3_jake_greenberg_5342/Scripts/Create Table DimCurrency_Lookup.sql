USE [AdventureWorksDW2019]
GO

/****** Object:  Table [dbo].[DimCurrency_Lookup]    Script Date: 4/13/2021 12:46:43 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[DimCurrency_Lookup](
	[CurrencyKey] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[CurrencyAlternateKey] [nchar](3) NOT NULL,
	[CurrencyName] [nvarchar](50) NOT NULL
)
GO



