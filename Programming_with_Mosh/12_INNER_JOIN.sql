USE sql_store;

SELECT * FROM  orders
JOIN customers ON customers.customer_id = orders.customer_id;
-- or
SELECT * FROM  orders
INNER JOIN customers ON customers.customer_id = orders.customer_id;

SELECT order_id, customers.customer_id, first_name, last_name FROM  orders
INNER JOIN customers ON customers.customer_id = orders.customer_id;
-- or
SELECT order_id, orders.customer_id, first_name, last_name FROM  orders
INNER JOIN customers ON customers.customer_id = orders.customer_id;
-- or with alias
SELECT order_id, o.customer_id, first_name, last_name 
FROM  orders o
INNER JOIN customers c
	ON c.customer_id = o.customer_id;
    
SELECT order_id ,p.product_id, name, quantity, oi.unit_price FROM order_items oi
JOIN products p
ON oi.product_id = p.product_id;