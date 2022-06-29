DROP TABLE IF EXISTS quarterly_sales;
CREATE TABLE quarterly_sales (
    year integer
  , q1   integer
  , q2   integer
  , q3   integer
  , q4   integer
);

INSERT INTO quarterly_sales
VALUES
    (2015, 82000, 83000, 78000, 83000)
  , (2016, 85000, 85000, 80000, 81000)
  , (2017, 92000, 81000, NULL , NULL )
;

select year
,q1
,q2
,case
  when q1 < q2 then '+'
  when q1 = q2 then ' '
  else '-'
  end as judge_q1_q2
,q2 - q1 as diff_q2_q1
,sign(q2-q1) as sign_q2_q1
from
 quarterly_sales
 order by year;
