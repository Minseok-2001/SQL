select dt,ad_id
,case when impressions > 0 then 100.0 * clicks / impressions
end as ctr_as_percent_by_case
,100.0 * clicks / nullif(impressions, 0) as ctr_as_percent_by_null
from advertising_stats
order by dt, ad_id;
