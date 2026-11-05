-- customers who have placed orders.

WITH active_customers AS (
    SELECT DISTINCT customer_id
    FROM sticking_store.orders
)
SELECT
    c.customer_id,
    c.name
FROM sticking_store.customer AS c
INNER JOIN active_customers AS a
    ON c.customer_id = a.customer_id;


-- products whose total ordered quantity is greater than 2.

WITH product_sales AS (
    SELECT
        product_id,
        SUM(quantity) AS total_quantity
    FROM sticking_store.orders
    GROUP BY product_id
)
SELECT *
FROM product_sales
WHERE total_quantity > 2;