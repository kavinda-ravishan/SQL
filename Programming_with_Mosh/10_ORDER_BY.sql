USE sql_store;

SELECT * FROM customers
ORDER BY first_name;
-- or
SELECT * FROM customers
ORDER BY first_name ASC;

SELECT * FROM customers
ORDER BY state, points; -- order by state and each state order by points
-- or
SELECT * FROM customers
ORDER BY state ASC, points ASC;

SELECT * FROM customers
ORDER BY state ASC, points DESC;

SELECT state, points FROM customers
ORDER BY 1,2; -- order by state and each state order by points
