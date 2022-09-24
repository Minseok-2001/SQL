SELECT year,
(coalesce(q1, 0) + coalesce(q2, 0)+ coalesce(q3, 0) + coalesce(q4, 0))
/ (SIGN(coalesce(q1, 0)) + SIGN(coalesce(q2, 0)) 
+ SIGN(coalesce(q3, 0)) + SIGN(coalesce(q4, 0))) AS AVG
FROM `sqlminseok.ch03.quarterly_sales`
ORDER BY year;
