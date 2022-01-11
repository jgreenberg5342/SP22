

INSERT INTO [Sales].[Currency]
           ([CurrencyCode]
           ,[Name]
           ,[ModifiedDate])
     VALUES
           ('AAA', 'AAA Rial', GETDATE()),
		   ('BBB', 'BBB Dollar', GETDATE())
GO

select * from [Sales].[Currency] order by ModifiedDate DESC

 UPDATE [Sales].[Currency]
        SET 
            [Name] = 'Lek Test',
			[ModifiedDate] = GETDATE()
      WHERE [CurrencyCode] = 'ALL';

   UPDATE [Sales].[Currency]
        SET 
            [Name] = 'Fiji Yuan',
			[ModifiedDate] = GETDATE()
      WHERE [CurrencyCode] = 'FJD';       

 

	select * from [dbo].[DimCurrency_Incremental_loading] order by  [CurrencyKey] DESC