select dt
,ad_id
,clicks / impressions as ctr
, 100.0* clicks / impressions as ctr_aspercent
from advertising_stats
where dt= '2017-04-01'
order by dt, ad_id;
