
-- Count orders placed by each customer.

SELECT
    customer_id,
    COUNT(order_id) AS total_orders
FROM sticking_store.orders
GROUP BY customer_id;

-- Find customers who have placed more than 0 orders.

SELECT
    customer_id,
    COUNT(order_id) AS total_orders
FROM sticking_store.orders
GROUP BY customer_id
HAVING COUNT(order_id) > 0;



