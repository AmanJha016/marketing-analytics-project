select 
	*
from 
	dbo.customer_journey;
with base as(
	select 
		*,
		ROW_NUMBER() over(partition by CustomerID,ProductID,VisitDate order by ProductID) as RowNo,
		Avg(Duration) over(partition by VisitDate) as avgDuration
	from 
	dbo.customer_journey
)
select
	JourneyID,
	CustomerID,
	ProductID,
	VisitDate,
	upper(Stage) as Stage,
	Action,
	Coalesce(Duration,avgDuration) as Duration -- fill the NULL values withe the average Duration of that Date.
from 
	base
Where RowNo = 1 -- Keep only the first occurance of each duplicate group

