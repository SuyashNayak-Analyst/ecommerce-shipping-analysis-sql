-- On-Time vs Late → Average Rating
select
case when Reached_on_Time_Y_N = 1 then 'On Time' else 'Late' end as Delivery_status,
count(*) as total_orders,
round(avg(Customer_rating), 2) as Avg_rating
from ecommerce_shipping
group by Delivery_status;

-- Rating Distribution for Late Orders
select 
Customer_rating, 
count(*) as Late_delivery
from ecommerce_shipping
where Reached_on_Time_Y_N = 0
group by Customer_rating
order by Customer_rating
