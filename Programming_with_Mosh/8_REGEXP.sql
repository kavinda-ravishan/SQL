-- regular expression

USE sql_store;

SELECT * FROM customers
WHERE last_name LIKE '%field%';
-- or
SELECT * FROM customers
WHERE last_name REGEXP 'field';

SELECT * FROM customers
WHERE last_name REGEXP '^b'; -- start with b

SELECT * FROM customers
WHERE last_name REGEXP 'field$'; -- end with field

SELECT * FROM customers
WHERE last_name REGEXP 'field|mac'; -- field or mac in last name

SELECT * FROM customers
WHERE last_name REGEXP 'field$|^mac|^rose';

SELECT * FROM customers
WHERE last_name REGEXP '[gi]e[ly]'; -- (before e, i or g) and (after e, l or y)

SELECT * FROM customers
WHERE last_name REGEXP '[a-c]e'; -- a to c before e



SELECT * FROM customers
WHERE first_name REGEXP 'elka|ambur';

SELECT * FROM customers
WHERE last_name REGEXP 'ey$|on$';

SELECT * FROM customers
WHERE last_name REGEXP '^my|se';

SELECT * FROM customers
WHERE last_name REGEXP 'b[ru]';
-- or
SELECT * FROM customers
WHERE last_name REGEXP 'br|bu';