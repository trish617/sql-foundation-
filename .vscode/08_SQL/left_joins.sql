-- Display all customers and their matching orders.

SELECT
    c.customer_id,
    c.name,
    o.order_id
FROM sticking_store.customer AS c
LEFT JOIN sticking_store.orders AS o
    ON c.customer_id = o.customer_id;

-- Count the number of orders placed by each customer,including customers with zero orders.

SELECT
    c.customer_id,
    c.name,
    COUNT(o.order_id) AS total_orders
FROM sticking_store.customer AS c
LEFT JOIN sticking_store.orders AS o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name;

