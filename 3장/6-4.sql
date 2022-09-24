SELECT year, q1, q2,
 CASE
    WHEN q1 < q2 THEN '+'
    WHEN q1 = q2 THEN ' '
    ELSE '-'
 END AS judge_q1_q2,
 q2 - q1 AS different_q2_q1,
 SIGN(q2-q1) AS sign_q2_q1

FROM `sqlminseok.ch03.quarterly_sales`
ORDER BY year; 
