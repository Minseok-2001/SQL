select user_id
,current_date as today
,date(timestamp(register_stamp)) as register_date
,date(timestamp(birth_date)) as birth_date
,date_diff(current_date, date(timestamp(birth_date)), year) as current_age
,date_diff(date(timestamp(register_stamp)), date(timestamp(birth_date)), year) as register_age
from mst_users_with_dates;
