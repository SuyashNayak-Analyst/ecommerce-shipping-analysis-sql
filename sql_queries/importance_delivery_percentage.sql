
-- Product Importance vs Late Delivery vs On Time & %
select
Product_importance,
case when Reached_on_Time_Y_N = 1 then 'On Time' else 'Late' end as delivery_status,
count(*) as total_orders,
round( count(*)*100/ sum( count(*)) over (partition by product_importance), 2 ) as order_percentage
from ecommerce_shipping
group by product_importance, Reached_on_Time_Y_N;


-- Product Importance vs Late Delivery & %
select
Product_importance, 
count(*) as total_orders,
sum(case when Reached_on_Time_Y_N = 0 then 1 else 0 end) as late_orders,
round (sum(case when Reached_on_Time_Y_N = 0 then 1 else 0 end)*100/count(*), 2) as late_percentage
from ecommerce_shipping
group by product_importance
order by late_percentage desc;
