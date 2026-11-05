-- IN :
-- Find customers from Mumbai or Delhi.

SELECT *
FROM sticking_store.customer
WHERE city IN ('Jamshedpur', 'Ranchi');

-- BETWEEN
-- Find products priced between 500 and 2000.

SELECT *
FROM sticking_store.product  
WHERE price BETWEEN 500 AND 2000;

-- The company wants to identify orders that do not have a delivery date assigned.

SELECT *
FROM your_schema.orders
WHERE delivery_date IS NULL;


-- company wants to find orders placed during January 2026.

SELECT *
FROM your_schema.orders
WHERE order_date BETWEEN '2026-01-01' AND '2026-01-31';
