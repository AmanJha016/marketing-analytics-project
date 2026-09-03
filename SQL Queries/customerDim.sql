select 
	c.CustomerID,
	c.CustomerName,
	c.Email,
	c.Gender,
	c.Age,
	-- c.GeographyID,
	g.Country,
	g.City
from customers c
left join 
	geography g
on c.GeographyID = g.GeographyID
	
