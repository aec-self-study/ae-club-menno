SELECT
customer_id, 
name, 
email,  
MIN(created_at) AS first_order_at,
COUNT(*) AS number_of_orders
FROM
  `analytics-engineers-club.coffee_shop.orders`
LEFT JOIN
  `analytics-engineers-club.coffee_shop.customers`
ON
  `analytics-engineers-club.coffee_shop.customers`.id = `analytics-engineers-club.coffee_shop.orders`.customer_id
GROUP BY
  customer_id,
  name,
  email
ORDER BY
  first_order_at
LIMIT
  5
