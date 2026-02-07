-- Warehouse wise late delivery ranking (Where 1 is worst and 5 is best)
select
Warehouse_block,
count(*) as Total_orders,
sum(case when Reached_on_Time_Y_N = 0 then 1 else 0 end) as Late_orders,
round(sum(case when Reached_on_Time_Y_N = 0 then 1 else 0 end)*100/count(*), 2) as Late_percentage,
rank() over(order by sum(case when Reached_on_Time_Y_N = 0 then 1 else 0 end)*1.0/count(*) desc) as Delay_rank
from ecommerce_shipping
group by Warehouse_block;
