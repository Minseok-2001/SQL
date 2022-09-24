SELECT year,
greatest(q1, q2, q3, q4) AS greatest,
least(q1, q2, q3, q4) AS least
FROM `sqlminseok.ch03.quarterly_sales`
ORDER BY year;
