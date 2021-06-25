USE sql_store;

SELECT * FROM customers
WHERE last_name LIKE 'b%'; -- start with b and any number of characters

SELECT * FROM customers
WHERE last_name LIKE 'brush%';

SELECT * FROM customers
WHERE last_name LIKE '%b%';

SELECT * FROM customers
WHERE last_name LIKE '%y';

SELECT * FROM customers
WHERE last_name LIKE '_____y'; -- end with y and there are 5 characters

SELECT * FROM customers
WHERE last_name LIKE 'My_et_';

SELECT * FROM customers
WHERE ( address LIKE '%trail%' OR address LIKE '%avenue%' )
AND phone NOT LIKE '%6';
