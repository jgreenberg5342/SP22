/*select sum(FactInternetSales.SalesAmount * FactInternetSales.UnitPriceDiscountPct)
from FactInternetSales, DimDate, DimProductSubCategory
where DimDate.CalendarQuarter = 3
and DimProductSubCategory.EnglishProductSubCategoryName = 'Road Bikes'*/

/*select FactInternetSales.UnitPriceDiscountPct
from FactInternetSales, DimProductSubcategory
where FactInternetSales.UnitPriceDiscountPct > 0*/

select
DP.DiscountPct, 
FIS.SalesAmount, 
(DP.DiscountPct * FIS.SalesAmount) as TotalDiscount

from 
DimDate DD,
DimProductSubCategory DPSC,
FactInternetSales FIS
inner join DimPromotion DP on DP.PromotionKey = FIS.PromotionKey

where
(DP.DiscountPct * FIS.SalesAmount) > 0
and DPSC.EnglishProductSubCategoryName = 'Road Bikes'
and DD.CalendarQuarter = 3
