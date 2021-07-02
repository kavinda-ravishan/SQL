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


-- outer join between multiple tables
SELECT c.customer_id, c.first_name, o.order_id, s.name AS shipper FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
LEFT JOIN shippers s ON s.shipper_id = o.shipper_id
ORDER BY c.customer_id;

SELECT o.order_date, o.order_id, c.first_name AS customer, sh.name AS shipper, os.name AS status FROM orders o
JOIN customers c ON c.customer_id = o.customer_id
LEFT JOIN shippers sh ON o.shipper_id = sh.shipper_id
JOIN order_statuses os ON o.status = os.order_status_id;

-- self outer join
SELECT e.employee_id, e.first_name AS employee, m.first_name AS manager FROM sql_hr.employees e
LEFT JOIN sql_hr.employees m ON e.reports_to = m.employee_id;


