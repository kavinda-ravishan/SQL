USE sql_invoicing;

SELECT * FROM invoices;

UPDATE invoices
SET payment_date = NULL
WHERE invoice_id BETWEEN 7 AND 10; -- update invoice_id : 7,8,9,10

UPDATE invoices
SET
	payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE client_id = 3; -- Edit -> Preferences -> SQL Editor -> untick safe update

UPDATE invoices
SET
	payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE client_id IN (3, 4); -- without where clause, this update all rows

USE sql_store;

UPDATE customers
SET points = points + 50
WHERE birth_date < '1990-12-31';
