-- Test to check if there are no orders from today
-- check if we have orders today. if larger than 0, will return the number, else will not return anything, even 0

SELECT count(*) as num_orders_today
FROM {{ref('stg_orders')}}
WHERE DATE(Order_Date) = CURRENT_DATE() --select the data of today
HAVING count(*)>0