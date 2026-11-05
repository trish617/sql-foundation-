-- Find products whose price is greater than the average price.

SELECT *
FROM sticking_store.product 
WHERE price > (
    SELECT AVG(price)
    FROM sticking_store.product 
);

-- Find products priced higher than the average product price.

SELECT
    product_id,
    price
FROM sticking_store.product
WHERE price > (
    SELECT AVG(price)
    FROM sticking_store.product
);


