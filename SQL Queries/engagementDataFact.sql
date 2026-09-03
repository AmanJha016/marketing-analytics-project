select
	EngagementID,
	ContentID,
	CampaignID,
	ProductID,
	UPPER(replace(ContentType,'Socialmedia','Social Media')) as ContentType,
	LEFT(ViewsClicksCombined, CHARINDEX('-', ViewsClicksCombined) - 1) as Views,
	RIGHT(ViewsClicksCombined, len(ViewsClicksCombined) - Charindex('-',ViewsClicksCombined)) as Clicks,
	Likes,
	Format(convert(Date,EngagementDate), 'dd-MM-yyyy') as EngagementDate
from 
	dbo.engagement_data
where
	ContentType != 'Newsletter';