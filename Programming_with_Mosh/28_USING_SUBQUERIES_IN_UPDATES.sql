USE sql_invoicing;

SELECT client_id FROM clients
WHERE name = 'Myworks';

UPDATE invoices
SET
	payment_total = 0,
    payment_date = NULL
WHERE client_id = 2;

SELECT * FROM invoices;

UPDATE invoices
SET
	payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE client_id = (
	SELECT client_id FROM clients -- this returns client_id of Mywork = 2
	WHERE name = 'Myworks'
);

UPDATE invoices
SET
	payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE client_id IN ( -- '=' to IN : sub quary returns multiple client_ids
	SELECT client_id FROM clients -- this returns client_id of Mywork = 2
	WHERE state IN ('CA', 'NY')
);


USE sql_store;

UPDATE orders
SET comments = 'Gold customer'
WHERE customer_id IN (
	SELECT customer_id FROM customers
	WHERE points > 3000
);
