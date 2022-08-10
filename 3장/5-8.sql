SELECT stamp,
substr(stamp,  1, 4) AS year,
substr(stamp,  6, 2) AS month,
substr(stamp,  9, 2) AS day,
substr(stamp, 12, 2) AS hour,
substr(stamp, 1, 7) AS year_month
FROM (SELECT CAST('2016-01-30 12:00:00' AS string) AS stamp) AS t;
