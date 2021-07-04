USE sql_store;

-- explicit syntax for cross join
SELECT c.first_name AS customer, p.name AS products 
FROM customers c
CROSS JOIN products p
ORDER BY customer;
-- or
-- implicit syntax for cross join
SELECT c.first_name AS customer, p.name AS products 
FROM customers c, products p
ORDER BY customer;

SELECT sh.name AS shipper, p.name AS products 
FROM shippers sh
CROSS JOIN products p
ORDER BY shipper;

SELECT sh.name AS shipper, p.name AS products 
FROM shippers sh, products p
ORDER BY shipper;
