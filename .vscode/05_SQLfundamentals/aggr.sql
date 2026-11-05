

-- COUNT
-- Count the total number of orders.

SELECT COUNT(*) AS total_orders
FROM sticking_store.orders;


-- SUM
-- Calculate the total quantity ordered.

SELECT SUM(quantity) AS total_quantity
FROM sticking_store.orders;

-- average quantity ordered per order.

SELECT ROUND(AVG(quantity), 2) AS average_quantity
FROM sticking_store.orders;

-- total quantity ordered by each customer.

SELECT
    customer_id,
    SUM(quantity) AS total_quantity
FROM sticking_store.orders
GROUP BY customer_id
ORDER BY total_quantity DESC;