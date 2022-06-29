DROP TABLE IF EXISTS advertising_stats;
CREATE TABLE advertising_stats (
    dt          varchar(255)
  , ad_id       varchar(255)
  , impressions integer
  , clicks      integer
);

INSERT INTO advertising_stats
VALUES
    ('2017-04-01', '001', 100000,  3000)
  , ('2017-04-01', '002', 120000,  1200)
  , ('2017-04-01', '003', 500000, 10000)
  , ('2017-04-02', '001',      0,     0)
  , ('2017-04-02', '002', 130000,  1400)
  , ('2017-04-02', '003', 620000, 15000)
;

select year
,greatest(q1, q2, q3, q4) as greatest_sales
,least(q1, q2, q3, q4) as least_sales
from quarterly_sales
order by year;
