select 
	productid,
	productname,
	category,
	price,
	case
		when price <= 50 then 'Low'
		when price between 50 and 200 then 'Medium'
	else 'High'
	end as priceCategory
from dbo.products 
	