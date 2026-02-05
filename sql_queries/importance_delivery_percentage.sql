select
Product_importance,
case when Reached_on_Time_Y_N = 1 then 'On Time' else 'Late' end as delivery_status,
count(*) as total_orders,
round( count(*)*100/ sum( count(*)) over (partition by product_importance), 2 ) as order_percentage
from ecommerce_shipping
group by product_importance, Reached_on_Time_Y_N;
