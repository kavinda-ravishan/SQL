USE sql_store;

-- Inner join
SELECT c.customer_id, c.first_name, o.order_id
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

-- there are two types of outer joins
-- 1. left join, 2. right join

SELECT c.customer_id, c.first_name, o.order_id
FROM customers c -- left table
LEFT JOIN orders o ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

SELECT c.customer_id, c.first_name, o.order_id
FROM customers c -- left table
RIGHT JOIN orders o ON c.customer_id = o.customer_id
ORDER BY c.customer_id;
-- or
SELECT c.customer_id, c.first_name, o.order_id
FROM customers c -- left table
RIGHT OUTER JOIN orders o ON c.customer_id = o.customer_id
ORDER BY c.customer_id;

SELECT p.product_id, p.name, oi.quantity FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id;