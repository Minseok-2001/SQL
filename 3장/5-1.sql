CREATE TABLE `ch03.mst_users`(
    user_id         STRING
  , register_date   STRING
  , register_device INT64
);

INSERT INTO `ch03.mst_users`
VALUES
    ('U001', '2016-08-26', 1)
  , ('U002', '2016-08-26', 2)
  , ('U003', '2016-08-27', 3)
;


SELECT
    user_id
    , CASE
        WHEN register_device = 1 THEN '데스크톱'
        WHEN register_device = 2 THEN '스마트폰'
        WHEN register_device = 3 THEN '애플리케이션'
        -- 디폴트 값을 지정할 경우 ELSE 구문을 사용합니다.
        -- ELSE ' '
      END AS device_name
FROM `sqlminseok.ch03.mst_users`;
