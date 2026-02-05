-- Total Orders
SELECT COUNT(*) AS total_orders
FROM ecommerce_shipping;

-- On-time vs Late orders
SELECT
  CASE
    WHEN Reached_on_Time_Y_N = 1 THEN 'On Time'
    ELSE 'Late'
  END AS delivery_status,
  COUNT(*) AS total_orders
FROM ecommerce_shipping
GROUP BY delivery_status;
