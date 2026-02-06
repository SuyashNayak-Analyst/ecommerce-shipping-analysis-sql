-- Total orders per warehouse
select 
  warehouse_block,
count(*) as total_orders
from ecommerce_shipping
group by warehouse_block;


-- Total orders per warehouse (On-Time vs Late)
select
warehouse_block,
case when Reached_on_Time_Y_N = 1 then 'On Time' else 'Late' end as delivery_status,
count(*) as total_orders
from ecommerce_shipping
group by warehouse_block, Reached_on_Time_Y_N
order by warehouse_block;


-- WAREHOUSE-WISE LATE DELIVERY %
select 
warehouse_block,
count(*) as total_orders,
sum( case when Reached_on_Time_Y_N =0 then 1 else 0 end ) as late_orders,
round( sum( case when Reached_on_Time_Y_N = 0 then 1 else 0 end) * 100/ count(*), 2) as late_percentage,
sum( case when Reached_on_Time_Y_N =1 then 1 else 0 end ) as on_time_orders,
round( sum( case when Reached_on_Time_Y_N = 1 then 1 else 0 end) * 100/ count(*), 2) as on_time_percentage
from ecommerce_shipping
group by warehouse_block
order by late_percentage desc; 

-- Product Importance vs Late Delivery & %
select
Product_importance, 
count(*) as total_orders,
sum(case when Reached_on_Time_Y_N = 0 then 1 else 0 end) as late_orders,
round (sum(case when Reached_on_Time_Y_N = 0 then 1 else 0 end)*100/count(*), 2) as late_percentage
from ecommerce_shipping
group by product_importance
order by late_percentage desc;
