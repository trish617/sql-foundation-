-- Assign a row number to each order.

SELECT
    order_id,
    customer_id,
    order_date,
    ROW_NUMBER() OVER (ORDER BY order_date) AS row_num
FROM sticking_store.orders;

-- Rank customers based on their total ordered quantity.

WITH customer_quantity AS (
    SELECT
        customer_id,
        SUM(quantity) AS total_quantity
    FROM sticking_store.orders
    GROUP BY customer_id
)
SELECT
    customer_id,
    total_quantity,
    RANK() OVER (ORDER BY total_quantity DESC) AS customer_rank
FROM customer_quantity;