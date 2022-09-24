SELECT year,
(coalesce(q1, 0) + coalesce(q2, 0)+ coalesce(q3, 0) + coalesce(q4, 0)) /4 AS avg
FROM `sqlminseok.ch03.quarterly_sales`
ORDER BY year;
