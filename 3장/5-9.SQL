SELECT purchase_id
,amount
,coupon
,amount - coupon as discount_amount1
,amount - coalesce(coupon, 0) as discount_amount2
FROM `sqlminseok.ch03.purchase_log_with_coupon`;
