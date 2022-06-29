select year
,(coalesce(q1, 0) + coalesce(q2, 0) + coalesce(q3, 0) + coalesce(q4, 0))
/(sign(coalesce(q1, 0)) + sign(coalesce(q2, 0))
+ sign(coalesce(q3, 0)) + sign(coalesce(q4,0)))
as average
from quarterly_sales
order by year;
