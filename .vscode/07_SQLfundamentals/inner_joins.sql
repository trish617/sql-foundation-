-- Find how many orders each customer has placed,along with their name.

SELECT
    c.name,
    COUNT(o.order_id) AS total_orders
FROM sticking_store.customer AS c
INNER JOIN sticking_store.orders AS o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name;


-- Combine customer and order information.

SELECT
    c.customer_id,
    c.name,
    o.order_id
FROM sticking_store.customer as c
INNER JOIN sticking_store.orders as o
    ON c.customer_id = o.customer_id;