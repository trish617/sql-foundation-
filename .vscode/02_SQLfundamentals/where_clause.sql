-- 1. WHERE CLAUSE
-- WHERE is used to filter records based on a condition.

SELECT *
FROM sticking_store.customer
WHERE customer_id = 1;


-- 2. EQUAL TO (=)
-- Retrieve customers from a specific city.

SELECT *
FROM sticking_store.customer
WHERE city = 'Ranchi';

-- 3. NOT EQUAL TO (!=)
-- Retrieve customers who are not from Mumbai.

SELECT *
FROM sticking_store.customer
WHERE city != 'Ranchi';


-- 4. GREATER THAN (>)
-- Retrieve customers with an ID greater than 5.

SELECT *
FROM sticking_store.customer
WHERE customer_id > 4;

-- 5. LESS THAN (<)
-- Retrieve customers with an ID less than 5.

SELECT *
FROM sticking_store.customer
WHERE customer_id < 5;


-- 6. GREATER THAN OR EQUAL TO (>=)

SELECT *
FROM sticking_store.customer
WHERE customer_id >= 3;

-- 7. AND OPERATOR
-- Both conditions must be true.

SELECT *
FROM sticking_store.customer
WHERE city = 'Jamshedpur'
AND customer_id > 2;


-- 8. OR OPERATOR
-- At least one condition must be true.

SELECT *
FROM sticking_store.customer
WHERE city = 'Ranchi'
OR city = 'Jamshedpur';


-- 9. NOT OPERATOR
-- Exclude customers from Mumbai.

SELECT *
FROM sticking_store.customer
WHERE NOT city = 'Ranchi';



