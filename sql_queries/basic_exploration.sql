select 
case when Reached_on_Time_Y_N = 1 then 'On Time' else 'Late' end as delivery_status, 
count(*) as total_orders,   
round( count(*)*100/sum(count(*)) over(), 2 ) as delivery_percentage
from ecommerce_shipping
group by Reached_on_Time_Y_N;

