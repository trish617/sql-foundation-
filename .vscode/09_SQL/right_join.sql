
-- Display all orders and matching customer details.

SELECT
    c.customer_id,
    c.name,
    o.order_id
FROM sticking_store.customer AS c
RIGHT JOIN sticking_store.orders AS o
    ON c.customer_id = o.customer_id;

-- Count the number of orders for each customer ID appearing in the orders table.

SELECT
    o.customer_id,
    COUNT(o.order_id) AS total_orders
FROM sticking_store.customer AS c
RIGHT JOIN sticking_store.orders AS o
    ON c.customer_id = o.customer_id
GROUP BY o.customer_id;