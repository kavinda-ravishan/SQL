SHOW DATABASES;
USE sql_store;

SHOW TABLES;
-- comment
# or this

SELECT 1, 2;

SELECT * FROM customers
WHERE customer_id > 5 AND customer_id <= 10
ORDER BY first_name ASC
LIMIT 3;