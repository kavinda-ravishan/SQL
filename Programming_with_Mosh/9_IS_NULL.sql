USE sql_store;

SELECT * FROM customers
WHERE phone IS NULL;

SELECT * FROM customers
WHERE phone IS NOT NULL;

SELECT * FROM orders
WHERE shipped_date IS NULL OR shipper_id IS NULL;