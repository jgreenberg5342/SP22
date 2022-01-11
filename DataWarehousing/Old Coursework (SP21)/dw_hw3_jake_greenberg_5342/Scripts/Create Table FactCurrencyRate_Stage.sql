USE [AdventureWorksDW2019]
GO

/****** Object:  Table [dbo].[FactCurrencyRate]    Script Date: 4/13/2021 11:49:33 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FactCurrencyRate_Stage](
	[CurrencyKey] [int] NOT NULL,
	[DateKey] [int] NOT NULL,
	[AverageRate] [float] NOT NULL,
	[EndOfDayRate] [float] NOT NULL,
	[Date] [datetime] NULL,
 CONSTRAINT [PK_FactCurrencyRate_Stage_CurrencyKey_DateKey] PRIMARY KEY CLUSTERED 
(
	[CurrencyKey] ASC,
	[DateKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FactCurrencyRate_Stage]  WITH CHECK ADD  CONSTRAINT [FK_FactCurrencyRate_Stage_DimCurrency_Stage] FOREIGN KEY([CurrencyKey])
REFERENCES [dbo].[DimCurrency_Stage] ([CurrencyKey])
GO

ALTER TABLE [dbo].[FactCurrencyRate_Stage] CHECK CONSTRAINT [FK_FactCurrencyRate_Stage_DimCurrency_Stage]
GO

ALTER TABLE [dbo].[FactCurrencyRate_Stage]  WITH CHECK ADD  CONSTRAINT [FK_FactCurrencyRate_Stage_Dim_Date] FOREIGN KEY([DateKey])
REFERENCES [dbo].[Dim_Date] ([DateKey])
GO

ALTER TABLE [dbo].[FactCurrencyRate_Stage] CHECK CONSTRAINT [FK_FactCurrencyRate_Stage_Dim_Date]
GO


