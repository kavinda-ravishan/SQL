USE sql_store;

SELECT * FROM customers
LIMIT 3;

SELECT * FROM customers
LIMIT 3 OFFSET 3;

SELECT * FROM customers
ORDER BY points DESC
LIMIT 3;