USE sql_store;

SELECT * FROM customers
WHERE state = 'va' OR state = 'ga' OR state = 'fl';
-- OR
SELECT * FROM customers
WHERE state IN ('va', 'ga', 'fl');

SELECT * FROM customers
WHERE state NOT IN ('va', 'ga', 'fl');

SELECT * FROM products
WHERE quantity_in_stock IN (49, 38, 72);


