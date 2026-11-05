--selcts all column from a table

SELECT *
FROM sticking_store.customer;

-- SELECT specifies which columns to retrieve.
-- * means all columns.

-- 1. SELECT AND FROM
-- Retrieve all records from a table.

SELECT *
FROM sticking_store.customer;


-- 2. SELECT SPECIFIC COLUMNS
-- Retrieve only the required columns.

SELECT *
FROM sticking_store.products;


-- 3. SELECT DISTINCT
-- Retrieve unique records.
-- Example: Display unique category records.

SELECT DISTINCT *
FROM sticking_store.category;


-- 4. ORDER BY ASCENDING
-- Sort records in ascending order.
-- Replace customer_id with an actual column name.

SELECT *
FROM sticking_store.customer
ORDER BY customer_id ASC;


-- 5. ORDER BY DESCENDING
-- Sort records in descending order.

SELECT *
FROM sticking_store.customer
ORDER BY customer_id DESC;


-- 6. LIMIT
-- Retrieve only the first 5 records.

SELECT *
FROM sticking_store.products
LIMIT 4;


-- 7. OFFSET
-- Skip the first 5 records and retrieve the next 5.

SELECT *
FROM sticking_store.products
LIMIT 4 OFFSET 4;


-- 8. ORDER BY WITH LIMIT
-- Retrieve the 5 latest orders.
-- Replace order_date with your actual date column.

SELECT *
FROM sticking_store.orders
ORDER BY order_date DESC
LIMIT 4;


-- ============================================================
-- END OF SQL FUNDAMENTALS
-- ============================================================
