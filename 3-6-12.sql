select user_id
,current_date as today
,date(timestamp(register_stamp)) as register_date
,date_diff(current_date, date(timestamp(register_stamp)), day) as diff_days
from mst_users_with_dates;
