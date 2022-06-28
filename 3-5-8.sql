select stamp
,substr(stamp, 1, 4) as year
,substr(stamp, 6, 2) as month
,substr(stamp, 9, 2) as day
,substr(stamp, 12, 2) as hour
,substr(stamp, 1, 7) as year_month
from (select cast('2016-01-30 12:00:00' as string) as stamp) as t;
