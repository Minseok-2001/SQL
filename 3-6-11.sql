select user_id
,timestamp(register_stamp) as register_stamp
,timestamp_add(timestamp(register_stamp), interval 1 hour) as after_1_hour
,timestamp_sub(timestamp(register_stamp), interval 30 minute) as before_30_minutes
,date(timestamp(register_stamp)) as register_date
,date_add(date(timestamp(register_stamp)), interval 1 day) as after_1_day
,date_sub(date(timestamp(register_stamp)), interval 1 month) as before_1_month
from mst_users_with_dates;
