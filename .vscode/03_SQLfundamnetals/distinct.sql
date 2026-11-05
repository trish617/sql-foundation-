-- DISTINCT
-- Returns only unique values from a column.

SELECT DISTINCT city
FROM sticking_store.customer;


-- Returns unique combinations of city and customer status.

SELECT DISTINCT city, customer_status
FROM sticking_store.customer;

-- The sales team wants a list of all cities
-- where the company has customers
SELECT DISTINCT city
FROM sticking_store.customer
ORDER BY city;

-- company wants to know how many different customers have placed orders.
SELECT COUNT(DISTINCT customer_id) AS unique_customers
FROM your_schema.orders;
