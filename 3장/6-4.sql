SELECT year,
IEEE_DIVIDE((q1+q2+q3+q4), 4) AS avg
FROM `sqlminseok.ch03.quarterly_sales`
ORDER BY year;
