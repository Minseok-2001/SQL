select stamp
,extract(year from stamp) as year
,extract(month from stamp) as month
,extract(day from stamp) as day
,extract(hour from stamp) as hour
from (select cast('2016-01-30 12:00:00' as timestamp) as stamp) as t;
