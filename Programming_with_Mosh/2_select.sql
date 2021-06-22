USE sql_store;

SELECT * FROM customers;

SELECT 
	last_name,
	first_name,
	points,
    points % 10,
    (points % 10) * 2 + 2 AS new_points
FROM customers;

SELECT DISTINCT state FROM customers;

SELECT name, unit_price, unit_price * 1.1 AS 'new price' FROM products;
