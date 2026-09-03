select 
	ReviewID,
	CustomerID,
	ProductID,
	ReviewDate,
	Rating,
	replace(ReviewText,'  ',' ') as ReviewText
from customer_reviews